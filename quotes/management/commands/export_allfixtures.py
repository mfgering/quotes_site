import json
from pathlib import Path

from django.conf import settings
from django.core.management.base import BaseCommand

from quotes.models import Quote


class Command(BaseCommand):
    help = "Regenerate fixtures/allfixtures.json from the current database."

    def add_arguments(self, parser):
        parser.add_argument(
            "--output",
            "-o",
            default=str(Path(settings.BASE_DIR) / "fixtures" / "allfixtures.json"),
            help="Output file path (default: fixtures/allfixtures.json)",
        )

    def handle(self, *args, **options):
        output = Path(options["output"])
        lines = [
            serialize_quote(quote)
            for quote in Quote.objects.select_related("category")
            .order_by("id")
            .iterator()
        ]
        output.write_text("[\n" + ",\n".join(lines) + "\n]\n", encoding="utf-8")
        self.stdout.write(
            self.style.SUCCESS(
                f"Wrote {len(lines)} quote(s) to {output}"
            )
        )


def serialize_quote(quote):
    """Render one quote in the legacy fixture format.

    Format per line (no pk, category as a list of natural-key names,
    field order fixed) so the file stays byte-compatible with what
    `loaddata` and existing tooling expect:

    {"model": "quotes.quote", "fields": { "content": "...", "category": ["..."], "dislikes": 0, "likes": 0, "views": 0 }}
    """
    parts = [
        '"content": ' + json.dumps(quote.content, ensure_ascii=False),
        '"category": [' + json.dumps(quote.category.name if quote.category else "Uncategorized", ensure_ascii=False) + ']',
        f'"dislikes": {quote.dislikes}',
        f'"likes": {quote.likes}',
        f'"views": {quote.views}',
    ]
    return '{"model": "quotes.quote", "fields": { ' + ", ".join(parts) + " }}"

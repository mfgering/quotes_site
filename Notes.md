
Must initialize the database

```bash
python manage.py makemigrations quotes
python manage.py migrate
```

DDL for sqlite version
```sql
-- quotes_category definition

CREATE TABLE "quotes_category" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(255) NOT NULL UNIQUE);

-- quotes_quote definition

CREATE TABLE "quotes_quote" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "title" varchar(255) NULL, "subtitle" varchar(255) NULL, "content" text NOT NULL, "views" integer NOT NULL, "likes" integer NOT NULL, "dislikes" integer NOT NULL, "category_id" integer NOT NULL REFERENCES "quotes_category" ("id") DEFERRABLE INITIALLY DEFERRED);

CREATE INDEX "quotes_quote_category_id_f356a19f" ON "quotes_quote" ("category_id");
```

DDL for mariadb version:
```sql
-- klezy_quotes.quotes_category definition

CREATE TABLE `quotes_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- klezy_quotes.quotes_quote definition

CREATE TABLE `quotes_quote` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `content` longtext NOT NULL,
  `views` int(11) NOT NULL,
  `likes` int(11) NOT NULL,
  `dislikes` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `quotes_quote_category_id_f356a19f_fk_quotes_category_id` (`category_id`),
  CONSTRAINT `quotes_quote_category_id_f356a19f_fk_quotes_category_id` FOREIGN KEY (`category_id`) REFERENCES `quotes_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=917 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

```
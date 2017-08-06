
jQuery(document).ready(function($){
    get_quote();
});

function get_quote() {
    console.log('get quote');
    set_for_loading();
    quote_from_server();
}

function set_for_loading() {
    $('.container h1').text('');
    $('#quote_content').html('<p><b>Loading...</b></p>');
}

function quote_from_server() {
    $.ajax({
        url:"/main/ajax/quote",
        type:"GET",
        success:function(response) {
            quote_to_doc(response);
        },
        error:function(){
            alert("error");
        }
    });
}

function quote_to_doc(response) {
    quote = response.quote;
    category = response.category;
    $('#quote_content').empty().data('quote', quote).data('category', category);
    $('.container h1').text(quote.title);
    if(quote.subtitle) {
        $('.container h1').text(quote.title);
        $('#quote_content').append('<h2>' + quote.subtitle + '</h2>');
    }
    if(quote.content) {
        $('#quote_content').append(quote.content);
    }
    if(category) {
        if(category.name){
            $('#quote_content').append('<p><b>' + category.name + '</b></p>');
        }
    }
    $('#quote_content').append('<div id="quote_stats"></div>').
        append('<p id="sentiments"><i id="button_like" value="like" class="glyphicon glyphicon-thumbs-up"></i> <i id="button_dislike" value="dislike" class="glyphicon glyphicon-thumbs-down"></i></p>');
    update_stats(quote);
    $('#button_like,#button_dislike').click(function(e){
        e.preventDefault();
        $.ajax({
            url:"/main/ajax/sentiment/"+$('#quote_content').data().quote.id+'/'+$(this).attr('value'),
            type:"GET",
            success:function(response) {
                quote = response.quote;
                category = response.category;
                update_stats(quote);
                $('#sentiments').empty()
            },
            error:function(){
                alert("error");
            }

        });
    });


}

function update_stats(quote) {
    $('#quote_stats').empty().append('Views: '+quote.views+' Likes: '+
        quote.likes+' Dislikes: '+quote.dislikes);
}
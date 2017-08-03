
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
    $('#quote_content').empty();
    $('.container h1').text(response.quote.title);
    if(response.quote.subtitle) {
        $('.container h1').text(response.quote.title);
        $('#quote_content').append('<h2>' + response.quote.subtitle + '</h2>');
    }
    if(response.quote.content) {
        $('#quote_content').append(response.quote.content);
    }
    if(response.category) {
        if(response.category.name){
            $('#quote_content').append('<p><b>' + response.category.name + '</b></p>');
        }
    }

}

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
    $('#quote_wrapper').html('<p><b>Loading...</b></p>');
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
    content = response.content;
    $('#quote_wrapper').empty().append(content);
    $('#button_like,#button_dislike').click(function(e){
        e.preventDefault();
        $.ajax({
            url:"/main/ajax/sentiment/"+$('#quote_content').attr('quote_id')+'/'+$(this).attr('value'),
            type:"GET",
            success:function(response) {
                quote_to_doc(response);
                $('#quote_sentiments').hide();
            },
            error:function(){
                alert("error");
            }

        });
    });
    //

}

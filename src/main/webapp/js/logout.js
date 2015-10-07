$(document).ready(function(){

    $("element").click(function(){
        $.ajax({
            url:"submit",
            type:"POST",
            beforeSend: function(xhr){
                var header = $("meta[name='csrf_header']").attr('content');
                var token = $("meta[name='csrf']").attr("content");
                xhr.setRequestHeader(header, token);
            },
            complete: function(){
                alert("logged out");
            }
        });
    })
});
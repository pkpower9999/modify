$(function(){
    $("#post_save").click(function(){
        if($("post_title").val() == ""){
            alert("제목을 입력하세요");
            return;
        }
        if($("#post_content").val() == ""){
            alert("내용을 입력하세요");
            return;
        }
        let data = {
            seq:$(".title_area").attr("data-post-seq"),
            title:$("#post_title").val(),
            content:$("#post_content").val()
        }

        $.ajax({
            url:"/api/updatePost",
            type:"post",
            contentType:"application/json",
            data: JSON.stringify(data),
            success: function (data) {
                alert("수정되었습니다.");
                history.back();
            },
            error:function(data){
                alert("에러");
            }
        })
    })
})
$(function () {

    $.ajax({
        url:"/api/patchPostCnt?post_seq="+$("#pi_seq").html(),
        type:"patch",
        success:function(data){
            console.log(data);
        },
        error:function(){
            alert("에러");
        }
    })

    

    let offset = 0;
    let total = 0;


  

    function makeDate(dt) {
        let date = new Date(dt);
        let formatted = "";
        formatted = date.getFullYear() + "-" + leadingZero((date.getMonth() + 1)) + "-" + leadingZero(date.getDate()) + " " + leadingZero(date.getHours()) + ":" + leadingZero(date.getMinutes());
        return formatted;
    }

    function leadingZero(n) {
        return n < 10 ? "0" + n : n;
    }


    $("#more_btn").click(function(){
        offset += 10;
        getComments();
        console.log(offset, total);
        if(offset+10 >= total){
            $("#more_btn").css("display", "none");
        }
    })


    $("#post_delete").click(function(e){
        
        e.preventDefault(); //a태그의 기본기능제거(링크- 링크이동삭제)
        if(confirm("삭제하시겠습니까")){
            $.ajax({
                url:"/api/deleteFreePost?seq="+$("#pi_seq").html(),
                method:"delete",
                success:function(){
                    alert("삭제되었습니다");
                    location.href="/freeBoard"
                },
                error:function(){
                    alert("에러");
                }
            })
        }
    })

    $("#post_like_btn, #post_dislike_btn").click(function(){
        let data = {
            post_seq:$("#pi_seq").html(),
            user_seq:$(".likes_area").attr("data-user-seq"),
            good_bad:$(this).attr("data-value")    // this는 위 버튼 둘중에 클릭된 아이
        }
        $.ajax({
            url:"/api/freeBoardLikes",
            type:"post",
            contentType:"application/json",
            data:JSON.stringify(data),
            success:function(data){
                alert(data.message);
                location.reload();
            },
            error:function(){
                alert("에러");
            }
        })
    })
})
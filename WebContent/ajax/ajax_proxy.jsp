<%-- ajax_proxy.jsp --%>
<%@page pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ajax Jsonp</title>
    <script src="../js/jquery-3.6.0.js"></script>
    <script>
        //jsonp 방식을 사용하기 위해서는 반드시 2가지 조건이
        //성립해야 한다.
        //1. jsonp 형식으로 제공해야 한다.
        //2. json 데이터만 사용 가능.
        
        $(function() {
            $('#btn').click(function(){
               $.ajax({
                   url : 'proxy.jsp?url=https://api.odcloud.kr/api/3079250/v1/uddi:98ffc52b-4534-4b94-97e8-9e076b761ff4_201905301433?page=1&perPage=45&serviceKey=QnjENLfkIfgJBcMbntn%2F1030kW9xe3X16Tbr6FTdfZ9wSEg%2B%2FwmMJ%2BQHvE%2BU0CxS3YN3XXNT1ibo5oYqap363w%3D%3D',
                   type : 'get',
                   dataType : 'json',
                   jsonp : 'call', //callback key
                   error : function(){},
                   success : function(json){
                       $('#sel').append(JSON.stringify(json));
                   }
               });
            }); //end of button event
        }); //end of onloading
        </script>
        <script scr = "http://www.acornacademy.co.kr/blockchain/naver_json.jsp?call=test"></script>
</head>
<body>
    <button id = "btn">가져오기</button>
    <div id = "sel">

    </div>
</body>
</html>
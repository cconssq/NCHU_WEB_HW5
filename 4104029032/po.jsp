<%@page contentType="text/html;charset=utf-8"%>
<html>
    <head>
        <title>自我介紹</title>
    </head>
    <body>
    <%
  String n = request.getParameter("name");
  String s = request.getParameter("sex");
  String sc = request.getParameter("school");
  String t = request.getParameter("index");
  String[] co = request.getParameterValues("country");
  String[] h =request.getParameterValues("ho");
  out.print("<p>姓名: <b>" + n + "</b></p>");
  out.print("<p>性別:<b>" + gd + "</b></p>");
      out.print("<p>學歷:<b>" + sc + "</b></p>");
      if ( adj.length == 1 ){
        out.print("<p>興趣嗜好有" + co[0] + ". </p>");
      }
      else{
        out.print("<p> 興趣嗜好有 <b>" + co[0] + "</b>");
        for(int j=1;j<adj.length;j++){
          out.print(" 和" + co[j] + "</b>");
        }
        out.print(". </p>");
      }
  if ( in.length == 1 ){
    out.print("<p> 想去 <b>" + in[0] + "旅遊</b>. </p>");
  }
  else{
    out.print("<p>想去<b>" + in[0]+"</b>");
    for(int i=1;i<in.length;i++){
      out.print(" 和<b>" + in[i] + "旅遊</b>");
    }
    out.print(". </p>");
  }
    out.print("<p>想說的話: </p> " );
      out.print("<p><b>" + t + "</b></p>");
%>

    </body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>el 연산자</title>
</head>
<body>
산술연산<br/>
\${7+4} = ${7+4}<br/>
\${7-4} = ${7-4}<br/>
\${7*4} = ${7*4}<br/>
\${7/4} = ${7/4}<br/>
\${10/3} = ${10/3}<br/>
\${7%3} = ${7%3}<br/>
\${10 div 3} = ${10 div 3}<br/>
\${7 mod 3} = ${7 mod 3}<br/>
<hr/>
관계연산<br/>
\${7>4} = ${7>4}<br/>
\${7>=4} = ${7>=4}<br/>
\${7<4} = ${7<4}<br/>
\${7<=4} = ${7<=4}<br/>
\${7==4} = ${7==4}<br/>
\${7!=4} = ${7!=4}<br/>
<hr/>
\${7 gt 4} = ${7 gt 4}<br/>
\${7 ge 4} = ${7 ge 4}<br/>
\${7 lt 4} = ${7 lt 4}<br/>
\${7 le 4} = ${7 le 4}<br/>
\${7 eq 4} = ${7 eq 4}<br/>
\${7 ne 4} = ${7 ne 4}<br/>
<hr/>
논리연산<br/>
\${true} = ${true}<br/>
\${!true} = ${!true}<br/>
\${true || true} = ${true || true}<br/>
\${true || false} = ${true || false}<br/>
\${false || false} = ${false || false}<br/>
<hr/>
\${true && true} = ${true && true}<br/>
\${true && false} = ${true && false}<br/>
\${false && false} = ${false && false}<br/>
<hr/>
\${true or true} = ${true or true}<br/>
\${true or false} = ${true or false}<br/>
\${false or false} = ${false or false}<br/>
<hr/>
\${true and true} = ${true and true}<br/>
\${true and false} = ${true and false}<br/>
\${false and false} = ${false and false}<br/>
<hr/>

</body>
</html>
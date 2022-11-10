<%@ include file="nav-bar.jsp" %>
<body onload='activeLink("search")'>
<form action="search-record"> 
<table class='ta'>
 <tr>
  <th class='td'>Enter customer id:</th>
  <td class='td'><input type="text" name='cid' class='tb' value='${cid}' required></td>
  <td class='td'><button class='btn btn-primary'>Search Record</button></td>
 </tr>
</table>
<div class='dvv'>
 <h4 style='color:red'>${msg}</h4>
</div>
</form>
</body>
<%@ include file="nav-bar.jsp" %>
<body onload='activeLink("edit")'>
<form action="update-record" method="post">
<table border='1' class='ta' style='width:60%'>
 <tr style='background-color:orange' align="center">
  <th colspan="2" class='la'>Customer Details</th>
 </tr>
 <tr>
   <th class='cl'>Customer id</th>
   <td  class='la'>${customer.cid}
   <input type='hidden' name='cid' value='${customer.cid}'>
   </td>
  </tr>
  <tr>
   <th class='cl'>Customer First Name</th>
   <td  class='la'><input type='text' name='firstname' class='tb' value='${customer.firstname}'></td>
  </tr>
  <tr>
   <th class='cl'>Customer Last name</th>
   <td  class='la'><input type='text' name='lastname' class='tb' value='${customer.lastname}'></td>
  </tr>
  <tr>
   <th class='cl'>Customer city</th>
   <td  class='la'><input type='text' name='city' class='tb' value='${customer.city}'></td>
  </tr>
  <tr>
   <th class='cl'>Customer phone number</th>
   <td  class='la'><input type='text' name='phone' class='tb' value='${customer.phone}'></td>
  </tr>
  <tr>
   <th class='cl'>Customer Email Id</th>
   <td  class='la'><input type='text' name='email' class='tb' value='${customer.email}'></td>
  </tr>
  <tr>
   <th class='cl'>Customer address</th>
   <td  class='la'><input type='text' name='address' class='tb' value='${customer.address}'></td>
  </tr>
  <tr>
  <tr>
   <td colspan="2" align="center">
    <button class='bt'>Update Record</button>
   </td>
  </tr>
</table>
</form>
</body>
<%@ include file="nav-bar.jsp" %>
<body onload='activeLink("search")'>
<table border='1' class='ta' style='width:60%'>
 <tr style='background-color:orange' align="center">
  <th colspan="2" class='la'>Customer Details</th>
 </tr>
 <tr>
   <th class='cl'>Customer id</th>
   <td  class='la'>${customer.cid}</td>
  </tr>
  <tr>
   <th class='cl'>Customer First Name</th>
   <td  class='la'>${customer.firstname}</td>
  </tr>
  <tr>
   <th class='cl'>Customer Last name</th>
   <td  class='la'>${customer.lastname}</td>
  </tr>
  <tr>
   <th class='cl'>Customer city</th>
   <td  class='la'>${customer.city}</td>
  </tr>
  <tr>
   <th class='cl'>Customer phone number</th>
   <td  class='la'>${customer.phone}</td>
  </tr>
  <tr>
   <th class='cl'>Customer Email Id</th>
   <td  class='la'>${customer.email}</td>
  </tr>
  <tr>
   <th class='cl'>Customer address</th>
   <td  class='la'>${customer.address}</td>
  </tr>
  <tr>
</table>
</body>
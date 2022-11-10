<%@ include file="nav-bar.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<body onload='activeLink("list")'>
 <div class='table table-responsive'>
     <table class='table table-hover'>
      <thead>
       <tr>
        <th>Customer Id</th><th>First name</th><th>Last name</th><th>City</th><th>Phone number</th><th>Email Id</th>
        <th>Address</th>
       </tr>
      </thead>
      <tbody>
       <c:forEach var='customer' items="${customerlist}">
        <tr>
         <td>${customer.cid}</td>
         <td>${customer.firstname}</td>
         <td>${customer.lastname}</td>
         <td>${customer.city}</td>
         <td>${customer.phone}</td>
         <td>${customer.email}</td>
         <td>${customer.address}</td>
        </tr>
       </c:forEach>
      </tbody>
     </table>
 </div>
<hr>
<div align="right" style="width:70%">
 <label>Records per page</label>
 <select name="total" id="aa" onchange="setSize(this)" style="margin-left:10px;margin-right:10px;font-size:20px;width:60px">
    <c:forEach var="ctr" begin="5" step="3" end="14">
    	<c:choose>
    	 <c:when test="${size==ctr}">
    	   <option selected>${ctr}</option>
    	 </c:when>
    	  <c:otherwise>
    	   <option>${ctr}</option>
    	 </c:otherwise>
    	</c:choose>
    	
    </c:forEach>
  </select>
  <label style='margin-right:10px'>${(pn*size)+1}-${pn!=pages-1?(pn*size+size):count}  of ${count}</label>
 <a href="customer-list?offset=${pn>0?pn-1:pn}&size=${size}" style='margin-right:20px;font-size:30px'><</a>
 <a href="customer-list?offset=${pn<pages-1?pn+1:pn}&size=${size}" style='margin-right:20px;font-size:30px'>></a>
</div>
</body>











<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<%@ include file="nav-bar.jsp" %>
<body onload='activeLink("save")'>
<div class='container my-2 mx-auto'>
  <div class='card  col-md-8 mx-auto'>
    <div class='card-body col-md-12'>
     <f:form action="save-record" method="post">
      <div class='row'>
        <div class='row col-md-6'>
         	<div class='col-md-12 form-group'>
          		<label for='fn'>Enter customer first name <span>*</span></label>
          		<f:input type='text' id='fn' path='firstname' onblur="isAlphabets(this,'efn')" class='form-control' />
          		<span id="efn"></span>	
        	</div>
        </div>
        <div class='row col-md-6'>	
        	<div class='col-md-12 form-group'>
          		<label for='ln'>Enter customer last name <span>*</span></label>
          		<f:input type='text' id='ln' path='lastname'  onblur="isAlphabets(this,'eln')"  class='form-control' />
          		<span id="eln"></span>	
        	</div>
        </div>	
         <div class='row col-md-6'>
         	<div class='col-md-12 form-group'>
          		<label for='city'>Enter customer city <span>*</span></label>
          		<f:input type='text' id='city' path='city' class='form-control' />
          		<span id="ecity"></span>	
        	</div>
        </div>
        <div class='row col-md-6'>	
        	<div class='col-md-12 form-group'>
          		<label for='phone'>Enter customer phone number <span>*</span></label>
          		<f:input type='phone' id='phone' path='phone' onblur="isNumeric(this)" class='form-control' />
          		<span id="eph"></span>	
        	</div>
        </div>	
        <div class='col-md-11 form-group'>
        	<label for='email'>Enter customer email id<span>*</span></label>
        	<f:input type='text' id='email' path='email' onblur="checkMail(this)" class='form-control' />
        	<span id="eem"></span>	
        </div>	
        <div class='col-md-11 form-group'>
          <label for='add'>Enter customer address<span>*</span></label>
          <f:input type='text' id='add' path='address' class='form-control' />
          <span id="eadd"></span>	
        </div>
        <div class='col-md-11 form-group'>
         <button class='btn btn-primary' onclick="return validateField()">Save Record</button>
        </div>
      </div>
     </f:form>
    </div>
  </div>
</div>
</body>
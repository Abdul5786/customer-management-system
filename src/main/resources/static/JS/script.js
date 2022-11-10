function activeLink(linkid)
{
	document.getElementById(linkid).style.color='red';
}
function activeLinka(link)
{
	link.style.color='red';
}
function validateField()
{
	clearMsg();
	var st=true;
	if(document.getElementById('fn').value==""){
		document.getElementById('efn').innerHTML="First name is required";
		st=false;
	}
	if(document.getElementById('ln').value==""){
		document.getElementById('eln').innerHTML="Last name is required";
		st=false;
	}
	if(document.getElementById('city').value==""){
		document.getElementById('ecity').innerHTML="City name is required";
		st=false;
	}
	if(document.getElementById('phone').value==""){
		document.getElementById('eph').innerHTML="Phone number is required";
		st=false;
	}
	if(document.getElementById('email').value==""){
		document.getElementById('eem').innerHTML="Email id is required";
		st=false;
	}
	else{
		var inputText=document.getElementById('email').value;
		if(!isValid(inputText))
		{
			document.getElementById('eem').innerHTML="Email id is not valid";
			st=false;
		}	
	}
	if(document.getElementById('add').value==""){
		document.getElementById('eadd').innerHTML="Address is required";
		st=false;
	}
	return st;	
}
function clearMsg()
{
	document.getElementById('efn').innerHTML="";
	document.getElementById('eln').innerHTML="";
	document.getElementById('ecity').innerHTML="";
	document.getElementById('eph').innerHTML="";
	document.getElementById('eem').innerHTML="";
	document.getElementById('eadd').innerHTML="";
}
function isValid(email){
	var i1=email.indexOf('@');
	if(i1==-1)
		return false;
	var i2=email.lastIndexOf('.');
	if(i2==-1)
		return false;
	if(i2<i1 || i2==i1+1)
		return false;
	return true;
}
function checkMail(em)
{
	document.getElementById('eem').innerHTML="";
	if(!isValid(em.value))
	{
		document.getElementById('eem').innerHTML="Email id is not valid";
		return false;
	}	
	return true;
}
function isAlphabets(tb,msg)
{
	document.getElementById(msg).innerHTML="";
	var format=/^[A-Za-z' ']*$/;
	if(!tb.value.match(format))
	{
		document.getElementById(msg).innerHTML="Only space and alphabets allowed";
		return false;	
	}
	return true;	
}
function isNumeric(tb)
{
	document.getElementById('eph').innerHTML="";
	if(isNaN(tb.value))
	{
		document.getElementById('eph').innerHTML="Only digits allowed";
		return false;	
	}
	return true;	
}
function setSize(element)
{
	location.href="customer-list?offset=0&size="+element.value;
}











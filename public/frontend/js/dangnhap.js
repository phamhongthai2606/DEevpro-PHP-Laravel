var username = document.getElementById("username");
var password = document.getElementById("password");
var btnLogin = document.querySelector(".button");

btnLogin.addEventListener("click", (e) => {
  e.preventDefault();
  var user = {
    username: username.value,
    password: password.value,
  };
  console.log(user);
  var json = JSON.stringify(user);
  if (!username.value || !password.value) {
    alert("Vui lòng nhập đầy đủ thông tin");
  }
  if (localStorage.getItem(username.value) == json) {
    alert("Đăng nhập thành công");
    window.location.href = "index.html";
  } 
  else {
    alert("Sai tài khoản hoặc mật khẩu");
  }
});

// function dangnhap(){
//   // var objFullname = document.querySelector('input[name="fullname"]');
//   // var fullname = objFullname.value;
//   // if(fullname == ''){
//   //     alert('Vui lòng nhập họ tên');
//   // }
//   objs = document.querySelectorAll('input');
//   for(var i = 0; i < objs.length; i++) {
//       var obj = objs[i];
//       validateInput(obj);
//   }
// }

// function validateInput(obj){
//   var valueObj = obj.value;
//   var field_name = obj.getAttribute('field-name');
//   var inputName = obj.getAttribute('name');
//   var idError = 'error-' +inputName;
//   var isError = false;
  
//   if(valueObj == '') {
//       // alert('Vui lòng nhập');
//       document.getElementById(idError).innerHTML = 'Vui lòng nhập ' +field_name;
//       isError = true;
//   }

//   if(obj.getAttribute('type') == 'password' && (valueObj.length < 8 || valueObj.length > 16)){
//       document.getElementById(idError).innerHTML = 'Vui lòng nhập mật khẩu từ 8 đến 16 kí tự';
//       isError = true;
//   }

//   if(!isError){
//       document.getElementById(idError).innerHTML = '';
//   }
// }

// // setTimeout(validateInput, 5000);

// function keyupInput(inputName){
//   var obj = document.querySelector('input[name="' +inputName+'"]');
//   validateInput(obj);
// }


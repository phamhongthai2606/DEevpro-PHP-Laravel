// var fullname = document.getElementById("fullname");
// var email = document.getElementById("email");
// var password = document.getElementById("password");
// var btnSignup = document.querySelector(".button");
// var btnLogin = document.querySelector(".button");

// btnSignup.addEventListener("click", (e) => {
//   e.preventDefault();
//   var user = {
//     username: fullname.value,
//     email: email.value,
//     password: password.value,
//   };
//   var json = JSON.stringify(user);
//   if (!fullname.value || !password.value) {
//     alert("Vui lòng nhập đầy đủ thông tin");
//   }
//   else {
//     localStorage.setItem(fullname.value, json);
//     alert("Đăng ký thành công");
//     window.location.href = "index.html";
//   }
// });

var obj = document.getElementById('title');
var obj2 = document.querySelector('.text3');
var obj3 = document.querySelectorAll('#title');
console.log('obj', obj2);
console.log('objs', obj3);
var objs = document.getElementsByClassName('text3');

function dangkytaikhoan(){
    objs = document.querySelectorAll('input');
    for(var i = 0; i < objs.length; i++) {
        var obj = objs[i];
        validateInput(obj);
    }
}

function validateInput(obj){
    var valueObj = obj.value;
    var field_name = obj.getAttribute('field-name');
    var inputName = obj.getAttribute('name');
    var idError = 'error-' +inputName;
    var isError = false;
    
    if(valueObj == '') {
        document.getElementById(idError).innerHTML = 'Vui lòng nhập ' +field_name;
        isError = true;
    }

    if(obj.getAttribute('type') == 'email' && valueObj.indexOf('@') < 0){
        document.getElementById(idError).innerHTML = 'Vui lòng nhập đúng định dạng email';
        isError = true;
    }

    if(obj.getAttribute('type') == 'password' && (valueObj.length < 8 || valueObj.length > 16)){
        document.getElementById(idError).innerHTML = 'Vui lòng nhập mật khẩu từ 8 đến 16 kí tự';
        isError = true;
    }

    if(!isError){
        document.getElementById(idError).innerHTML = '';
    }
}

function keyupInput(inputName){
    var obj = document.querySelector('input[name="' +inputName+'"]');
    validateInput(obj);
}

// setting sau bao nhiêu lâu thì thực hiện function
// setTimeout(function(){
//     alert('sau 1s thực hiện alert()');
//     alert('Đăng ký thành công');
//     window.location.href="index.html";
// }, 5000)





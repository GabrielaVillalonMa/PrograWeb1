//function checkPassword(){
//    let  password = document.getElementById("password").value;
//    let confirmPassword = document.getElementById("confirmPassword").value;
//    console.log(password, confirmPassword);
//    let message = document.getElementById("message");
//   
//   
//    
//   if (password.length !== 0){
//        if (password === confirmPassword){
//            message.textContent = "Las contraseñas son iguales";
//        }
//        else{
//            message.textContent = "Las contraseñas NO son iguales";
//        }
//    }
//}

 function checkPassword(){
                          var password = document.getElementById("password").value;
                          var confirmPassword = document.getElementById("confirmPassword").value;
                          debugger;
                          console.log(confirmPassword);
                          console.log(password);
                          if (password === confirmPassword){
                              console.log("entre");
                              document.getElementById("alert").innerHTML = "Password match";
                          }
                          else{
                              document.getElementById("alert").innerHTML = "Password do NOT match";
                          }
                      }

//submitButton = document.querySelector("submitButton");
//createPw = document.querySelector("password");
//confirmPw = document.querySelector("confirmPassword");
//alertText = document.querySelector("custom-text-pass");
//createPw.type = "password";
//confirmPw.type ="password";
//
// submitButton,addEventListener("click", () =>{
//        if(createPw.value === confirmPw.value){
//        alertText.innerText = "Las contraseñas son iguales";
//        }
//        else{
//        alertText.innerText = "Las contraseñas NO son iguales";
//        }
//        
//    });

//$('input').blur(function() {
//    var pass = $('input[name=password]').val();
//    var repass = $('input[name=confirmPassword]').val();
//    if(($('input[name=password]').val().length === 0) || ($('input[name=confirmPassword]').val().length === 0)){
//        $('#password').addClass('has-error');
//    }
//    else if (pass !== repass) {
//        $('#password').addClass('has-error');
//        $('#confirmPassword').addClass('has-error');
//    }
//    else {
//        $('#password').removeClass().addClass('has-success');
//        $('#confirmPassword').removeClass().addClass('has-success');
//    }
//});
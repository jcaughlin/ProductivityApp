$(document).ready(function (){
   $("#newUser").validate({
       rules: {
            username: {
                required: true,
                minlength: 5
            },
            password: {
                required: true,
                minlength:5
           },
           confirm_password: {
                required: true,
                minlength: 5,
                equalTo: "#password"
    },
           messages: {
                username: {
                    required: "You must enter a user name",
                    minlength: "Your user name must be at least 5 characters long"
                },
                password:{
                    required: "Please provide a password",
                    minlength: "Please create a password with at least 5 characters"
                },
                confirm_password: {
                    required:"Please confirm your password",
                        minlength: "Password still needs to be 5 characters",
                        equalo: "Passwords do not match"
                }
           }


        });

});

//confirmPassword
//createPassword
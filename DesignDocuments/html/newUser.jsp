<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Project 1</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
    <script src="validate.js"></script>
</head>

<body>

    <div class="container">

        <!--Page Heading-->
        <div class="row pagehead">
            <div class="col-sm-10">
                <div class="page-header row center-block">
                    <h1>Create Account</h1>
                </div>
            </div>

            <!--Dropdown Menu Button-->
            <div class="col-sm-2">
                <div class="btn-group">
                    <button type="button" class="btn btn-info-outline">Menu</button>
                    <button type="button" class="btn btn-info-outline dropdown-toggle" data-toggle="dropdown">
                        <span class="caret"></span>
                        <span class="sr-only">Toggle Dropdown</span>
                    </button>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="#">Action</a>
                        <a class="dropdown-item" href="#">Another action</a>
                        <a class="dropdown-item" href="#">Reports</a>
                        <a>
                            <hr>
                        </a>
                        <a class="dropdown-item" href="#"><i>User Settings</i></a>
                        <a class="dropdown-item" href="#"><strong>Sign Out</strong></a>
                    </div>
                </div>
            </div>
        </div>

        <!--Top of Form-->
        <fieldset>
            <legend class="font-weight-bold">Please Register:</legend>

            <form class="form-horizontal" id="myForm" action="project01.html" name="newCustomerEntryForm" method="post">

              <!--User First & Last Name -->
                <div class="row form-group">
<!--User First Name -->
                    <label class="col-sm-2 control-label font-weight-bold" for="firstName">First Name:</label>
                    <div class="col-sm-4">
                        <input id="firstName" type="text" class="form-control">
                        <div class="form-control-feedback" id="firstNameError"></div>
                    </div>


                    <!-- User Last Name -->
                    <label class="col-sm-2 control-label font-weight-bold" for="lastName">Last Name:</label>
                    <div class="col-sm-4">
                        <input id="lastName" type="text" class="form-control">
                        <div class="form-control-feedback" id="lastNameError"></div>
                    </div>
                </div>

                <!--User name-->
                <div class="form-group row">
                    <label class="col-sm-2 control-label font-weight-bold" for="userName">Create User Name: </label>
                    <div class="col-sm-4">
                        <input class="form-control" id="userName" type="text">
                        <div class="form-control-feedback" id="userNameText"></div>
                    </div>
                </div>

                <!--Password-->
                <div class="form-group row">
                    <label class="col-sm-2 control-label font-weight-bold" for="userPassword">Create Password: </label>
                    <div class="col-sm-4">
                        <input class="form-control" id="userPassword" type="password">
                        <div class="form-control-feedback" id="passwordText"></div>
                    </div>
                </div>

                <!--Password Confirm-->
                <div class="form-group row">
                    <label class="col-sm-2 control-label font-weight-bold" for="userPasswordConfirm">Confirm Password: </label>
                    <div class="col-sm-4">
                        <input class="form-control" id="passwordConfirm" type="password">
                        <div class="form-control-feedback" id="passwordConfirmText"></div>
                    </div>
                </div>
                <!--User Email-->
                <div class="form-group row">
                    <label class="col-sm-2 control-label font-weight-bold" for="userEmail">Enter Email: </label>
                    <div class="col-sm-10">
                        <input class="form-control" id="userEmail" type="text">
                        <div class="form-control-feedback" id="emailError"></div>
                    </div>
                </div>

                <!--User City-->
                <div class="form-group row">
                    <label class="col-sm-2 control-label font-weight-bold" for="userState">State:</label>
                    <div class="col-sm-4">
                        <select class="custom-select" id="userState">

                            <option value="" selected="selected">Select a State</option>
                            <option value="AL">Alabama</option>
                            <option value="AK">Alaska</option>
                            <option value="AZ">Arizona</option>
                            <option value="AR">Arkansas</option>
                            <option value="CA">California</option>
                            <option value="CO">Colorado</option>
                            <option value="CT">Connecticut</option>
                            <option value="DE">Delaware</option>
                            <option value="DC">District Of Columbia</option>
                            <option value="FL">Florida</option>
                            <option value="GA">Georgia</option>
                            <option value="HI">Hawaii</option>
                            <option value="ID">Idaho</option>
                            <option value="IL">Illinois</option>
                            <option value="IN">Indiana</option>
                            <option value="IA">Iowa</option>
                            <option value="KS">Kansas</option>
                            <option value="KY">Kentucky</option>
                            <option value="LA">Louisiana</option>
                            <option value="ME">Maine</option>
                            <option value="MD">Maryland</option>
                            <option value="MA">Massachusetts</option>
                            <option value="MI">Michigan</option>
                            <option value="MN">Minnesota</option>
                            <option value="MS">Mississippi</option>
                            <option value="MO">Missouri</option>
                            <option value="MT">Montana</option>
                            <option value="NE">Nebraska</option>
                            <option value="NV">Nevada</option>
                            <option value="NH">New Hampshire</option>
                            <option value="NJ">New Jersey</option>
                            <option value="NM">New Mexico</option>
                            <option value="NY">New York</option>
                            <option value="NC">North Carolina</option>
                            <option value="ND">North Dakota</option>
                            <option value="OH">Ohio</option>
                            <option value="OK">Oklahoma</option>
                            <option value="OR">Oregon</option>
                            <option value="PA">Pennsylvania</option>
                            <option value="RI">Rhode Island</option>
                            <option value="SC">South Carolina</option>
                            <option value="SD">South Dakota</option>
                            <option value="TN">Tennessee</option>
                            <option value="TX">Texas</option>
                            <option value="UT">Utah</option>
                            <option value="VT">Vermont</option>
                            <option value="VA">Virginia</option>
                            <option value="WA">Washington</option>
                            <option value="WV">West Virginia</option>
                            <option value="WI">Wisconsin</option>
                            <option value="WY">Wyoming</option>
                        </select>
                        <div class="form-control-feedback" id="stateError"></div>
                    </div>

                    <!--User Zip Code-->
                    <label class="col-sm-2 control-label font-weight-bold" for="userZipCode">Zip Code:</label>
                    <div class="col-sm-4">
                        <input class="form-control" type="text" id="userZipCode">
                        <div class="form-control-feedback" id="zipCodeError"></div>
                    </div>

                </div>
                <!--Gender-->
                <div class="form-group row">
                    <label class="col-sm-2 control-label font-weight-bold">Gender:</label>
                    <div class="col-sm-2" id="genderDiv">
                        <label class="radio-inline">
                            <input type="radio" name="gender" value="male"> Male
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="gender" value="female"> Female
                        </label>
                        <div class="form-control-feedback" id="genderError"></div>
                    </div>
                    <div class="col-sm-8">
                        <!-- EMPTY DIV TO MAINTAIN ROW INTEGRITY-->
                    </div>
                </div>

                <div class="form-group row">

                    <div class="col sm-2 col-sm-offset-2">
                        <input type="button" class="button-sm btn-success" onClick="validateForm()" id="submitButton" value="Validate">
                        <input type="button" class="button-sm btn-warning" onClick="location.href='https://youtu.be/k7aivm9lGKI'"id="clearButton" value="Ichiro!">
                    </div>
                </div>
            </form>
        </fieldset>
    </div>
    <!-- Bottom of Container-->

    <div class="container">
        <div id="output">

        </div>
      </div>

    <!-- Bottom of Container-->
    <script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
</body>

</html>

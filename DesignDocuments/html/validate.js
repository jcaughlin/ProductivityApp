function validateForm() {
  var everythingIsOkay = true;
  var ERROR_MESSAGE = " * Missing or Invalid Entry";
  var EMAIL_ERROR_MESSAGE = " * Please Enter a Valid Email";
  var AREA_CODE_ERROR = " * Three digits expected";
  var PREFIX_ERROR = " * Three digits expected";
  var SUFFIX_ERROR = " * Four digits expected";
  var emailRegEx = /^(([^<>()\[\]\.,;:\s@\"]+(\.[^<>()\[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i;
  var threeDigitRegEx = /^\d{3}$/;
  var fourDigitRegEx = /^\d{4}$/;

  var clearOutput = document.getElementById("outputUser");
  if (clearOutput) {
    clearOutput.parentNode.removeChild(clearOutput);
  }

  var firstName = document.getElementById('firstName').value;
  var lastName = document.getElementById("lastName").value;
  var userFullName = firstName + " " + lastName;
  var userEmail = document.getElementById("userEmail").value;
  var userAreaCode = document.getElementById("userAreaCode").value;
  userAreaCode = Number(userAreaCode);
  var userTelPrefix = document.getElementById("userTelPrefix").value;
  userTelPrefix = Number(userTelPrefix);
  var userTelSuffix = document.getElementById("userTelSuffix").value;
  userTelSuffix = Number(userTelSuffix);
  var userTelephone = "(" + userAreaCode + ")" + " " + userTelSuffix + "-" + userTelSuffix;
  var userAddress = document.getElementById("userAddress").value;
  var userCity = document.getElementById("userCity").value;
  var userState = document.getElementById("userState").value;
  var userZipCode = document.getElementById("userZipCode").value;
  var userGender = document.forms["newCustomerEntryForm"]["gender"].value;


  // First Name Validation
  if (firstName == "" || !isNaN(firstName)) {
    everythingIsOkay = false;
    if (!document.getElementById("fnameSpan")) {

      var firstNameTextBox = document.getElementById("firstName");
      var firstNameErrorOutput = document.getElementById("firstNameError");
      var fnameSpan = document.createElement("span");
      fnameSpan.setAttribute("id", "fnameSpan");
      var nameErrorMessage = document.createTextNode(ERROR_MESSAGE);
      fnameSpan.appendChild(nameErrorMessage);
      firstNameErrorOutput.appendChild(fnameSpan);
      firstNameTextBox.className += " required";
    }

  } else {

    var clearfnameSpan = document.getElementById("fnameSpan");

    if (clearfnameSpan) {
      clearfnameSpan.parentNode.removeChild(clearfnameSpan);
      var clearFirstNameTextBox = document.getElementById("firstName");
      clearFirstNameTextBox.className += " clear";
    }

  }

  // Last Name Validation
  if (lastName == "" || !isNaN(lastName)) {
    everythingIsOkay = false;
    if (!document.getElementById("lnameSpan")) {
      var lastNameTextBox = document.getElementById("lastName");
      var lastNameErrorOutput = document.getElementById("lastNameError");
      var lastNameSpan = document.createElement("span");
      lastNameSpan.setAttribute("id", "lnameSpan");
      var nameErrorMessage = document.createTextNode(ERROR_MESSAGE);
      lastNameSpan.appendChild(nameErrorMessage);
      lastNameErrorOutput.appendChild(lastNameSpan);
      lastNameTextBox.className += " required";
    }

  } else {
    var clearlnameSpan = document.getElementById("lnameSpan");

    if (clearlnameSpan) {
      clearlnameSpan.parentNode.removeChild(clearlnameSpan);
      var clearLastNameTextBox = document.getElementById("lastName");
      clearLastNameTextBox.className += " clear";
    }

  }

  // Email Validation
  if (!emailRegEx.test(userEmail)) {
    everythingIsOkay = false;
    if (!document.getElementById("emailSpan")) {
      var emailTextBox = document.getElementById("userEmail");
      var emailErrorOutput = document.getElementById("emailError");
      var emailErrorMessage = document.createTextNode(EMAIL_ERROR_MESSAGE);
      var emailErrorSpan = document.createElement("span");
      emailErrorSpan.setAttribute("id", "emailSpan");
      emailErrorSpan.appendChild(emailErrorMessage);
      emailErrorOutput.appendChild(emailErrorSpan);
      emailTextBox.className += " required";
    }
  } else {

    var clearEmailSpan = document.getElementById("emailSpan");

    if (clearEmailSpan) {
      clearEmailSpan.parentNode.removeChild(clearEmailSpan);

      var clearEmailTextBox = document.getElementById("userEmail");
      clearEmailTextBox.className += " clear";
    }
  }

  // Area Code Validation
  if (!threeDigitRegEx.test(userAreaCode))

  {

    everythingIsOkay = false;

    if (!document.getElementById("areaCodeSpanID")) {

      var areaCodeErrorTextBox = document.getElementById("userAreaCode");
      var areaCodeOutput = document.getElementById("areaCodeError");
      var areaCodeErrorMessage = document.createTextNode(AREA_CODE_ERROR);


      var areaCodeSpan = document.createElement("span");
      areaCodeSpan.setAttribute("id", "areaCodeSpanID");
      areaCodeSpan.appendChild(areaCodeErrorMessage);
      areaCodeOutput.appendChild(areaCodeSpan);
      areaCodeErrorTextBox.className += " required";
    }
  } else {

    var clearAreaCodeSpan = document.getElementById("areaCodeSpanID");

    if (clearAreaCodeSpan) {
      var clearAreaCode = document.getElementById("areaCodeError");
      clearAreaCodeSpan.parentNode.removeChild(clearAreaCodeSpan);
      var clearAreaCodeTextBox = document.getElementById("userAreaCode");
      clearAreaCodeTextBox.className += " clear";
    }
  }

  // Telephone Prefix Validation
  if (!threeDigitRegEx.test(userTelPrefix)) {
    everythingIsOkay = false;
    if (!document.getElementById("prefixErrorSpanId")) {
      var prefixTextBox = document.getElementById("userTelPrefix");
      var prefixOutput = document.getElementById("prefixError");
      var prefixErrorMessage = document.createTextNode(PREFIX_ERROR);
      var prefixErrorSpan = document.createElement("span");
      prefixErrorSpan.setAttribute("id", "prefixErrorSpanId");
      prefixErrorSpan.appendChild(prefixErrorMessage);
      prefixOutput.appendChild(prefixErrorSpan);
      prefixTextBox.className += " required";
    }
  } else {

    var clearPrefixSpan = document.getElementById("prefixErrorSpanId");

    if (clearPrefixSpan) {
      var clearPrefix = document.getElementById("prefixErrorSpanId");
      clearPrefix.parentNode.removeChild(clearPrefix);
      var clearPrefixTextBox = document.getElementById("userTelPrefix");
      clearPrefixTextBox.className += " clear";
    }
  }

  // User Telephone Validation
  if (!fourDigitRegEx.test(userTelSuffix)) {
    everythingIsOkay = false;
    if (!document.getElementById("suffixErrorId")) {
      var suffixTextBox = document.getElementById("userTelSuffix");
      var suffixOutput = document.getElementById("suffixError");
      var telSuffixSpan = document.createElement("span");
      telSuffixSpan.setAttribute("id", "suffixErrorId")
      var suffixErrorMessage = document.createTextNode(SUFFIX_ERROR);
      telSuffixSpan.appendChild(suffixErrorMessage);
      suffixOutput.appendChild(telSuffixSpan);
      suffixTextBox.className += " required";

    }
  } else {
    var clearSuffixError = document.getElementById("suffixErrorId");
    if (clearSuffixError) {
      clearSuffixError.parentNode.removeChild(clearSuffixError);
      var clearSuffixTextBox = document.getElementById("userTelSuffix");
      clearSuffixTextBox.className += " clear";
    }
  }

  // User Address Validation
  if (userAddress == "") {
    everythingIsOkay = false;
    if (!document.getElementById("addressErrorSpanId")) {
      var addressTextBox = document.getElementById("userAddress");
      var addressOutput = document.getElementById("addressError");
      var addressErrorMessage = document.createTextNode(ERROR_MESSAGE);
      var addressErrorSpan = document.createElement("span");
      addressErrorSpan.setAttribute("id", "addressErrorSpanId");
      addressErrorSpan.appendChild(addressErrorMessage);
      addressOutput.appendChild(addressErrorSpan);
      addressTextBox.className += " required";
    }
  } else {
    var clearAddressError = document.getElementById("addressErrorSpanId");
    if (clearAddressError) {
      clearAddressError.parentNode.removeChild(clearAddressError);
      var addressTextBox = document.getElementById("userAddress");
      addressTextBox.className += " clear";
    }
  }

  // User City Validation
  if (userCity == "") {
    everythingIsOkay = false;

    if (!document.getElementById("cityErrorId")) {
      var cityTextBox = document.getElementById("userCity");
      var cityOutput = document.getElementById("cityError");
      var citySpan = document.createElement("span");
      citySpan.setAttribute("id", "cityErrorId");
      var cityErrorMessage = document.createTextNode(ERROR_MESSAGE);
      citySpan.appendChild(cityErrorMessage);
      cityOutput.appendChild(citySpan);
      cityTextBox.className += " required";
    }
  } else {
    var clearCity = document.getElementById("cityErrorId");
    if (clearCity) {
      clearCity.parentNode.removeChild(cityErrorId);
      var clearCityTextBox = document.getElementById("userCity");
      clearCityTextBox.className += " clear";
    }
  }

  // User State Validation
  if (userState == "") {
    everythingIsOkay = false;
    if (!document.getElementById("stateSpanId")) {
      var stateTextBox = document.getElementById("userState");
      var stateOutput = document.getElementById("stateError");
      var stateErrorSpan = document.createElement("span");
      stateErrorSpan.setAttribute("id", "stateSpanId");
      var stateErrorMessage = document.createTextNode(ERROR_MESSAGE);
      stateErrorSpan.appendChild(stateErrorMessage);
      stateOutput.appendChild(stateErrorSpan);
      stateTextBox.className += " required";
    }
  } else {
    var clearStateSpan = document.getElementById("stateSpanId");
    if (clearStateSpan) {
      clearStateSpan.parentNode.removeChild(clearStateSpan);
      var clearStateTextBox = document.getElementById("userState");
      clearStateTextBox.className += " clear";
    }
  }

  // User City Validation
  if (userZipCode == "" || isNaN(userZipCode)) {
    everythingIsOkay = false;

    if (!document.getElementById("zipSpanErrorId")) {
      var zipcodeTextBox = document.getElementById("userZipCode");
      var zipCodeOutput = document.getElementById("zipCodeError");
      var zipCodeErrorMessage = document.createTextNode(ERROR_MESSAGE);
      var zipCodeSpan = document.createElement("span");
      zipCodeSpan.setAttribute("id", "zipSpanErrorId");
      zipCodeSpan.appendChild(zipCodeErrorMessage);
      zipCodeOutput.appendChild(zipCodeSpan);
      zipcodeTextBox.className += " required";
    }
  } else {
    var clearZipCodeSpan = document.getElementById("zipSpanErrorId");
    if (clearZipCodeSpan) {
      clearZipCodeSpan.parentNode.removeChild(clearZipCodeSpan);
      var clearZipCodeTextBox = document.getElementById("userZipCode");
      clearZipCodeTextBox.className += " clear";
    }
  }

  // User Gender Validation
  if (userGender == "") {
    everythingIsOkay = false;
    if (!document.getElementById("genderOutputSpanId")) {
      var genderTextBox = document.getElementById("genderDiv");
      var genderOutput = document.getElementById("genderError");
      genderErrorMessage = document.createTextNode(ERROR_MESSAGE);
      var genderOutputSpan = document.createElement("span");
      genderOutputSpan.setAttribute("id", "genderOutputSpanId");
      genderOutputSpan.appendChild(genderErrorMessage);
      genderOutput.appendChild(genderOutputSpan);
      genderTextBox.className += " required";
    }
  } else {
    var clearGender = document.getElementById("genderOutputSpanId");
    if (clearGender) {
      clearGender.parentNode.removeChild(clearGender);
      var clearGenderTextBox = document.getElementById("genderDiv");
      clearGenderTextBox.className += " clearDiv";
    }
  }


  // User Courses CheckBox Validation
  if (checkbox() == "") {
    everythingIsOkay = false;

    if (!document.getElementById("courseOutputSpanId")) {
      var courseTextBox = document.getElementById("courseDiv");
      var courseOutput = document.getElementById("courseError");
      courseErrorMessage = document.createTextNode(ERROR_MESSAGE);
      courseOutput.appendChild(courseErrorMessage);
      var courseOutputSpan = document.createElement("span");
      courseOutputSpan.setAttribute("id", "courseOutputSpanId");
      courseOutputSpan.appendChild(courseErrorMessage);
      courseOutput.appendChild(courseOutputSpan);
      courseTextBox.className += " required";
    }
  } else {

    var clearCourse = document.getElementById("courseOutputSpanId");
    if (clearCourse) {
      clearCourse.parentNode.removeChild(clearCourse);
      var clearCourseTextBox = document.getElementById("courseDiv");
      courseDiv.className += " clearDiv";
    }
  }

  if (everythingIsOkay) {
    outputUserEnteredData(userFullName, userEmail, userTelephone, userAddress, userCity, userState, userZipCode, userGender);
  }
}


function checkbox() {
  var aspnet = document.getElementById("aspnet");
  var advancedjava = document.getElementById("advancedjava");
  var php = document.getElementById("php");
  var courses = "";

  var map = new Map();
  map.set(aspnet, "ASP.NET");
  map.set(advancedjava, "Advanced Java");
  map.set(php, "PHP");

  var iterator = 0;
  map.forEach(function(value, key) {
    var mapLength = map.size;

    if (key.checked && (iterator < (mapLength - 1))) {
      courses += (value + ",");
      iterator++;
    } else if (!key.checked) {
      iterator + 2;
    } else if (key.checked && (iterator == mapLength - 1)) {
      courses += value;
    }
  });

  return courses;
}





function outputUserEnteredData(name, email, phone, address, city, state, zipcode, gender) {
  var output = document.getElementById("output");

  var outputUser = document.createElement("div");
  outputUser.setAttribute("id", "outputUser");
  output.appendChild(outputUser);

  var userSuccessHeader = document.createElement("h1");
  var successHeader = document.createTextNode("New User Details");
  userSuccessHeader.appendChild(successHeader);
  outputUser.appendChild(userSuccessHeader);

  // create unorderedlist and set attribute
  var userDetails = document.createElement("ul");
  userDetails.setAttribute("id", "userList");
  outputUser.appendChild(userDetails);

  // User Name Output
  var listItemUserName = document.createElement("li");
  var nameTextNode = document.createTextNode("Name: " + name);
  listItemUserName.appendChild(nameTextNode);
  outputUser.appendChild(listItemUserName);

  // User Email Output
  var listItemEmail = document.createElement("li");
  var emailTextNode = document.createTextNode("Email: " + email);
  listItemEmail.appendChild(emailTextNode);
  outputUser.appendChild(listItemEmail);

  // User Phone Output
  var listItemPhone = document.createElement("li");
  var phoneTextNode = document.createTextNode("Phone: " + phone);
  listItemPhone.appendChild(phoneTextNode);
  outputUser.appendChild(listItemPhone);

  // User Address
  var listItemAddress = document.createElement("li");
  var addressTextNode = document.createTextNode("Address: " + address);
  listItemAddress.appendChild(addressTextNode);
  outputUser.appendChild(listItemAddress);

  // User City
  var listItemCity = document.createElement("li");
  var cityTextNode = document.createTextNode("City: " + city);
  listItemCity.appendChild(cityTextNode);
  outputUser.appendChild(listItemCity);

  // User State
  var listStateItem = document.createElement("li");
  var stateTextNode = document.createTextNode("State: " + state);
  listStateItem.appendChild(stateTextNode);
  outputUser.appendChild(listStateItem);

  // User Zip Code
  var listItemZipCode = document.createElement("li");
  var zipCodeTextNode = document.createTextNode("Zip Code: " + zipcode);
  listItemZipCode.appendChild(zipCodeTextNode);
  outputUser.appendChild(listItemZipCode);

  // User Gender
  var listItemGender = document.createElement("li");
  var genderTextNode = document.createTextNode("Gender: " + gender);
  listItemGender.appendChild(genderTextNode);
  outputUser.appendChild(listItemGender);

  // User Courses
  var listCourses = document.createElement("li");
  var coursesTextNode = document.createTextNode("Courses: " + checkbox());
  listCourses.appendChild(coursesTextNode);
  outputUser.appendChild(listCourses);

}


function checkbox() {
  var aspnet = document.getElementById("aspnet");
  var advancedjava = document.getElementById("advancedjava");
  var php = document.getElementById("php");
  var courses = "";

  var map = new Map();
  map.set(aspnet, "ASP.NET");
  map.set(advancedjava, "Advanced Java");
  map.set(php, "PHP");

  var iterator = 0;
  map.forEach(function(value, key) {
    var mapLength = map.size;

    if (key.checked && (iterator < (mapLength - 1))) {
      courses += (value + ", ");
      iterator++;
    } else if (!key.checked) {
      iterator + 2;
    } else if (key.checked && (iterator == mapLength - 1)) {
      courses += value;
    }
  });

  return courses;
}

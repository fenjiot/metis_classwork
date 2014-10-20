function calculate(){
  var leftValue = Number(document.getElementById("left").value);
  var rightValue = Number(document.getElementById("right").value);
  var operator = document.getElementById("operator").value;
  var resultElement = document.getElementById("result");

  if( operator === "+") {
    var result = leftValue + rightValue;
  } else if( operator === "-") {
    var result = leftValue - rightValue;
  } else if( operator === "*") {
    var result = leftValue * rightValue;
  } else if( operator === "/") {
    var result = leftValue / rightValue;
  } else if( operator === "**") {
    var result = Math.pow(leftValue, rightValue);
  } else {
    var result = "Hey, you can't do that!";
  }

  resultElement.innerText = result;
  // console.log(result);
  return false;
}

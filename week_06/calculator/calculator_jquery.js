$(function(){
  $("#theForm").submit( calculate );
})

function calculate(){

  var leftValue = Number($("#left").val());
  var rightValue = Number($("#right").val());
  var operator = $("#operator").val();
  var resultElement = $("#result");

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

  resultElement.text(result);
  return false;
}

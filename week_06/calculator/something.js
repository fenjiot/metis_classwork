function hello(word){
  if( word === "hello there"){
    console.log(word);
  } else {
    console.log("Not very nice");
    return false;
  }
}

function noArguments(){
  console.log("I don't do anything :/");
}

var greeting = "hello there";
hello(greeting);

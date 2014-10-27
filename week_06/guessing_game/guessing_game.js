var images = [
{ url: "http://davidfeldmanshow.com/wp-content/uploads/2014/01/dogs-wallpaper.jpg", type: "dog"}, 
{ url: "http://max.distractify.com/wp-content/uploads/2014/01/new-userguide-image.jpg", type: "dog"},
{ url: "http://i4.mirror.co.uk/incoming/article2106793.ece/alternates/s2197/Fluffy-White-dog.jpg", type: "dog"},
{ url: "http://www.funchap.com/wp-content/uploads/2014/05/Cute-Dog-Wallpapers.jpg", type: "dog"},
{ url: "http://images2.fanpop.com/image/photos/13900000/Pretty-Dog-in-Garden-puppies-13904176-1024-768.jpg", type: "dog"},
  { url: "http://static.ddmcdn.com/gif/earliest-dogs-660x433-130306-akita-660x433.jpg", type: "dog"},
{ url: "http://www.pageresource.com/wallpapers/wallpaper/keywords-cute-cats-cat-animal-animals_120005.jpg", type: "cat"},
];

$(function(){
  $("#dog").click(function(){
    checkAnswer("dog")
  });
  $("#cat").click(function(){
    checkAnswer("cat")
  });
  $("#next").click(loadNextImage)
});

var index = 0;
var score = 0;

function loadNextImage(){
  if( index < images.length ){
    $("#image").attr("src", images[index].url);
    index++;
  } else {
    index = 0;
    $("#image").attr("src", images[index].url);
  }
};

function checkAnswer(type){
  if ( images[index].type === type ) {
    $("#result").text("YES");
    score++;
  }
  loadNextImage();
};



// extra stuff.  not using now.
var myCoolThing = function(aFunction){
  var result = aFunction();
  console.log(result);
}

var returnsHello = function(){
  return "hello";
}

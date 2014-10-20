var images = [
  "http://max.distractify.com/wp-content/uploads/2014/01/new-userguide-image.jpg",
  "http://i4.mirror.co.uk/incoming/article2106793.ece/alternates/s2197/Fluffy-White-dog.jpg",
  "http://www.funchap.com/wp-content/uploads/2014/05/Cute-Dog-Wallpapers.jpg",
  "http://images2.fanpop.com/image/photos/13900000/Pretty-Dog-in-Garden-puppies-13904176-1024-768.jpg",
  "http://static.ddmcdn.com/gif/earliest-dogs-660x433-130306-akita-660x433.jpg"
  ];

$(function(){
  $("#dog").click(sayYes)
  $("#cat").click(sayNo)
  $("#next").click(loadNextImage)
});

function sayYes(){
  $("#result").text("YES");
};

function sayNo(){
  $("#result").text("no");
};

var dogPictureIndex = 0;
function loadNextImage(){
  $("#image").attr("src", images[dogPictureIndex]);
  dogPictureIndex++;
};

$(function(){
  $('#img').animate('spotlight', {
    "radius" : 55, // ライトの半径(ピクセル)
    "count" : 12, // ライトの動く回数
    "duration": 10000
  });
  setTimeout(function(){
    $(".left").css("visibility","visible");
  },9000);
  setTimeout(function(){
    $(".right").css("visibility","visible");
  },10000);
});

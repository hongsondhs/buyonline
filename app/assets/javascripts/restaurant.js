$(document).ready(function(){
  var rating = $("#rate_vote").val() == "" ? 0 : $("#rate_vote").val();
  if (parseInt($("#previous-star-search").text()) < 0) {
    rating = 0;
  }
  else rating = parseInt($("#previous-star-search").text());
  $('#rating-star-search').rateYo({
    rating: rating,
    starWidth: "35px",
    fullStar: true
  }).on("rateyo.set", function (e, data) {
    var rating = data.rating;
    $("#rate_vote").val(rating);
    $("#q_avg_rate_gt").val(rating-0.5);
    $("#q_avg_rate_lteq").val(rating+0.5);
  });
});

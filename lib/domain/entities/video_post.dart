class VidePost {

final String caption;
final String videoUrl;
final int likes;
final int views;

VidePost({
  required this.caption,
  required this.videoUrl,
  this.likes =0, 
  this.views =0, 
});

}
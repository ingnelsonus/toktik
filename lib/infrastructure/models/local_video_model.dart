import 'package:toktik/domain/entities/video_post.dart';

class LocalVideoModel {
  final String name;
  final String videoUrl;
  final int likes;
  final int views;

  LocalVideoModel(
      {required this.name,
      required this.videoUrl,
      this.likes=0,
      this.views=0
      });

  factory LocalVideoModel.fromJsonMap(Map<String, dynamic> json) =>
      LocalVideoModel(
          name: json['name'] ?? 'no video name',
          videoUrl: json['videoUrl'] ?? 'No video url',
          likes: json['likes'] ?? 0,
          views: json['views'] ?? 0
          );

  VidePost toVideoPostEntity() =>
      VidePost(
       caption: name,
       videoUrl: videoUrl,
       likes: likes,
       views: views
       );
}

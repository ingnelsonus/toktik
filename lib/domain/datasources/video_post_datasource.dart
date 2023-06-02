import 'package:toktik/domain/entities/video_post.dart';

abstract class VideoPostDataSource {
  Future<List<VidePost>> getTrendingVideosByPage(int page);
  Future<List<VidePost>> getFavoriteVideosByUser(String userID);
}

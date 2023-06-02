import '../entities/video_post.dart';

abstract class VideoPostRepository {
  Future<List<VidePost>> getTrendingVideosByPage(int page);
  Future<List<VidePost>> getFavoriteVideosByUser(String userID);
} 
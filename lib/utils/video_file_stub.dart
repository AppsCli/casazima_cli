import 'package:video_player/video_player.dart';

/// Web 平台占位：不支持从文件播放
VideoPlayerController createVideoControllerFromFile(String path) {
  throw UnimplementedError('File playback not supported on web');
}

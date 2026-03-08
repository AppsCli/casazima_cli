import 'package:video_player/video_player.dart';

import 'video_file_stub.dart' if (dart.library.io) 'video_file_io.dart' as impl;

/// 从本地文件路径创建视频控制器
/// Web 平台会抛出 UnimplementedError，调用前需用 kIsWeb 判断
VideoPlayerController createVideoControllerFromFile(String path) {
  return impl.createVideoControllerFromFile(path);
}

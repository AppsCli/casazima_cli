import 'dart:io';
import 'package:video_player/video_player.dart';

/// 从本地文件路径创建视频控制器（仅用于非 Web 平台）
VideoPlayerController createVideoControllerFromFile(String path) {
  return VideoPlayerController.file(File(path));
}

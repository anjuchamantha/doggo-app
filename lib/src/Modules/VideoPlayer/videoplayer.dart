import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

class VideoPlayer extends StatefulWidget {
  final context;
  VideoPlayer({Key key, this.context}) : super(key: key);
  @override
  _VideoPlayerState createState() => _VideoPlayerState(context);
}

class _VideoPlayerState extends State<VideoPlayer> {
  final currentContext;
  _VideoPlayerState(this.currentContext);

  @override
  void initState() {
    super.initState();
    initializePlayer();
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  ChewieController _chewieController;
  VideoPlayerController _videoPlayerController;
  Future<void> initializePlayer() async {
    _videoPlayerController = VideoPlayerController.network(
        'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1226-large.mp4');
    await _videoPlayerController.initialize();
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
      autoPlay: true,
      looping: true,
      // Try playing around with some of these other options:

      // showControls: false,
      // materialProgressColors: ChewieProgressColors(
      //   playedColor: Colors.red,
      //   handleColor: Colors.blue,
      //   backgroundColor: Colors.grey,
      //   bufferedColor: Colors.lightGreen,
      // ),
      // placeholder: Container(
      //   color: Colors.grey,
      // ),
      // autoInitialize: true,
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext currentContext) {
    return Scaffold(
      body: Expanded(
        child: Center(
          child: _chewieController != null &&
                  _chewieController.videoPlayerController.value.initialized
              ? Chewie(
                  controller: _chewieController,
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    CircularProgressIndicator(),
                    SizedBox(height: 20),
                  ],
                ),
        ),
      ),
    );
  }
}

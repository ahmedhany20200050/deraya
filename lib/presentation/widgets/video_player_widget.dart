import 'package:deraya_application/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_player/video_player.dart';

class VideoReview extends StatefulWidget {
  const VideoReview({
    Key? key,
    required this.url,
  }) : super(key: key);


  final String url;

  @override
  State<VideoReview> createState() => _VideoReviewState();
}

class _VideoReviewState extends State<VideoReview> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;
  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        widget.url


    );

    _initializeVideoPlayerFuture = _controller.initialize();

    _controller.setLooping(true);
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 310.h,
      width:double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Stack(
          children: [
            Container(
              height: 200,
              child: FutureBuilder(
                future: _initializeVideoPlayerFuture,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return AspectRatio(
                      aspectRatio: _controller.value.aspectRatio,
                      child: VideoPlayer(_controller),
                    );
                  } else {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Center(
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        if (_controller.value.isPlaying) {
                          _controller.pause();
                        } else {
                          _controller.play();
                        }
                      });
                    },
                    icon: Icon(
                      _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
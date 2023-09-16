import 'package:e_gem/Features/Profile/presentation/views/widgets/app_bar.dart';
import 'package:e_gem/constants/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_player/video_player.dart';

/// Stateful widget to fetch and then display video content.
class ExerciseVideos extends StatefulWidget {
  const ExerciseVideos({super.key, required this.idx});

  final idx;
  @override
  _ExerciseVideosState createState() => _ExerciseVideosState();
}

class _ExerciseVideosState extends State<ExerciseVideos> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        VideoPlayerController.networkUrl(Uri.parse(Strings().url[widget.idx]))
          ..initialize().then((_) {
            // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
            setState(() {});
          });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: _controller.value.isInitialized
              ? AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                )
              : Container(
                  height: 230.h,
                ),
        ),
        Column(
          children: [
            Align(
              alignment: Alignment(-0.9, -0.8),
              child: Padding(
                padding: EdgeInsets.only(left: 16.0.w, top: 16.h),
                child: CustomAppBar(title: ''),
              ),
            ),
            Align(
              alignment: Alignment(-0.01, -0.05),
              child: IconButton(
                alignment: Alignment.center,
                onPressed: () {
                  setState(() {
                    _controller.value.isPlaying
                        ? _controller.pause()
                        : _controller.play();
                  });
                },
                icon: Icon(
                  size: 50,
                  _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}

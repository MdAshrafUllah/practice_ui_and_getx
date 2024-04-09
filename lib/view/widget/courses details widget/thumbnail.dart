import 'package:elearning/view/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ThumbnailWidget extends StatefulWidget {
  final String imageUrl;
  final String videoLink;
  const ThumbnailWidget({
    required this.imageUrl,
    required this.videoLink,
    super.key,
  });
  @override
  State<ThumbnailWidget> createState() => _ThumbnailWidgetState();
}

class _ThumbnailWidgetState extends State<ThumbnailWidget> {
  late VideoPlayerController _controller;
  late Future<void> initializeVideoPlayerFuture;
  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(Uri.parse(widget.videoLink));
    initializeVideoPlayerFuture = _controller.initialize().then((_) {
      _controller.addListener(() {
        if (_controller.value.position == _controller.value.duration) {
          setState(() {});
        }
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: Stack(
        alignment: Alignment.center,
        children: [
          _controller.value.isPlaying
              ? ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: VideoPlayer(_controller),
                )
              : Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                          widget.imageUrl,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              AppColor.themeColor,
                              AppColor.transparentColor
                            ],
                            stops: [0.4, 1.0],
                            begin: FractionalOffset.centerLeft,
                            end: FractionalOffset.centerRight,
                            tileMode: TileMode.clamp,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColor.themeColor),
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
                            icon: const Icon(
                              Icons.play_arrow_outlined,
                              color: Colors.white,
                              size: 40,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
          if (!_controller.value.isPlaying)
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
                  color: Colors.white,
                  size: 40,
                ),
              ),
            ),
          Positioned.fill(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {
                  setState(() {
                    if (_controller.value.isPlaying) {
                      _controller.pause();
                    } else {
                      _controller.play();
                    }
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

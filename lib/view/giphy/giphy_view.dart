import 'package:flutter/material.dart';
import 'package:gif/gif.dart';
import 'package:libras_quiz/utils/app_colors.dart';
import 'package:libras_quiz/utils/app_text_style.dart';
import 'package:libras_quiz/utils/loading_widget.dart';

class GiphyView extends StatefulWidget {
  final String title;
  final String giphy;

  const GiphyView({super.key, required this.title, required this.giphy});

  @override
  State<GiphyView> createState() => _GiphyViewState();
}

class _GiphyViewState extends State<GiphyView> with TickerProviderStateMixin {
  late GifController _controller;

  @override
  void initState() {
    _controller = GifController(vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        widget.title,
            style: AppTextStyle.textStyle(fontWeight: FontWeight.w600,size: 24),
          ),centerTitle: true),
      body: Center(
        child: Gif(
          image: AssetImage(widget.giphy),
          fit: BoxFit.fill,
          // height: MediaQuery.of(context).size.height,
          controller: _controller,
          // if duration and fps is null, original gif fps will be used.
          //fps: 30,
          duration: const Duration(seconds: 2),
          autostart: Autostart.loop,
          placeholder: (context) => LoadingWidget.loading(AppColors.primaryColor, 25),
          onFetchCompleted: () {
            _controller.reset();
            _controller.forward();
          },
        ),
      ),
    );
  }
}

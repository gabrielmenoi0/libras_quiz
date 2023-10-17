import 'package:flutter/material.dart';
import 'package:gif/gif.dart';

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
        style: TextStyle(color: Colors.white),
      )),
      body: Center(
        child: Gif(
          image: AssetImage("assets/images/giphy.gif"),
          fit: BoxFit.fill,
          // height: MediaQuery.of(context).size.height,
          controller: _controller,
          // if duration and fps is null, original gif fps will be used.
          //fps: 30,
          duration: const Duration(seconds: 2),
          autostart: Autostart.loop,
          placeholder: (context) => const Text('Loading...'),
          onFetchCompleted: () {
            _controller.reset();
            _controller.forward();
          },
        ),
      ),
    );
  }
}

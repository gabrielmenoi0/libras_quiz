import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:gif/gif.dart';
import 'package:libras_quiz/view/base_view/base_view.dart';
import 'package:libras_quiz/view/tips/model/tips_model.dart';
import 'package:libras_quiz/view/tips/viewmodel/tips_view_model.dart';

class TipsView extends StatefulWidget {
  final String type;

  const TipsView({super.key, required this.type});

  @override
  State<TipsView> createState() => _TipsViewState();
}

class _TipsViewState extends State<TipsView> with TickerProviderStateMixin {
  late GifController _controller;

  @override
  void initState() {
    _controller = GifController(vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BaseView<TipsViewModel>(
      viewModel: TipsViewModel(),
      onModelReady: (model) {
        model.type = widget.type;
        model.setContext(context);
        model.init();
      },
      onPageBuilder: buildScaffoldBody,
    );
  }

  Widget buildScaffoldBody(BuildContext context, TipsViewModel viewModel) {
    return Scaffold(
        appBar: AppBar(title: Observer(builder: (context) => Text(widget.type,style: TextStyle(color: Colors.white),)),),
        body: Observer(builder: (context) => GridView.builder(
          shrinkWrap: true,
          itemCount: viewModel.listTipsView.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 10),
          itemBuilder: (context, index) {
            final TipsModel item = viewModel.listTipsView[index];
            return itemGiphy(viewModel,item);
          },),)
    );
  }

  Widget itemGiphy(TipsViewModel viewModel, TipsModel item) {
    return InkWell(
      onTap: ()=> viewModel.viewGiphy(title: item.id ??"" ,giphy: item.value ??""),
      child: Column(
        children: [
          Gif(
            image: AssetImage("assets/images/giphy.gif"),
            controller: _controller, // if duration and fps is null, original gif fps will be used.
            //fps: 30,
            duration: const Duration(seconds: 2),
            autostart: Autostart.loop,
            placeholder: (context) => const Text('Loading...'),
            onFetchCompleted: () {
              _controller.reset();
              // _controller.repeat(max: 10000);
              _controller.forward();
            },
          ),
          Text(item.id ??"")
      ],)
    );
  }
}

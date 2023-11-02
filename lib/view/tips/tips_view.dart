import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:gif/gif.dart';
import 'package:libras_quiz/utils/app_colors.dart';
import 'package:libras_quiz/utils/app_text_style.dart';
import 'package:libras_quiz/utils/loading_widget.dart';
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
        appBar: AppBar(title: Text(widget.type, style: AppTextStyle.textStyle(fontWeight: FontWeight.w600,size: 24),
        ),centerTitle: true),
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
          Container(
            height: 180,
            // width: 200,
            child: Gif(
              image: AssetImage(item.value ?? ""),
              controller: _controller, // if duration and fps is null, original gif fps will be used.
              //fps: 30,
              // height: 700,
              duration: const Duration(seconds: 2),
              autostart: Autostart.loop,
              placeholder: (context) => LoadingWidget.loading(AppColors.primaryColor, 25),
              onFetchCompleted: () {
                _controller.reset();
                // _controller.repeat(max: 10000);
                _controller.forward();
              },
            ),
          ),
          Text(item.id ??"", style: AppTextStyle.textStyle(fontWeight: FontWeight.w600,size: 18,color: AppColors.primaryColor),)
      ],)
    );
  }
}

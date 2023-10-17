import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:gif/gif.dart';
import 'package:libras_quiz/utils/app_colors.dart';
import 'package:libras_quiz/utils/image_constants.dart';
import 'package:libras_quiz/view/base_view/base_view.dart';
import 'package:libras_quiz/view/quiz/viewmodel/quiz_view_model.dart';

class QuizView extends StatefulWidget {
  final String type;

  const QuizView({super.key, required this.type});

  @override
  State<QuizView> createState() => _QuizViewState();
}

class _QuizViewState extends State<QuizView> with TickerProviderStateMixin {
  late GifController _controller;

  @override
  void initState() {
    _controller = GifController(vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BaseView<QuizViewModel>(
      viewModel: QuizViewModel(),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
        model.setPageView(_controller);
      },
      onPageBuilder: buildScaffoldBody,
    );
  }

  Widget buildScaffoldBody(BuildContext context, QuizViewModel viewModel) {
    return Scaffold(
        backgroundColor: AppColors.primaryColor,
        appBar: AppBar(title: Text(widget.type,style: TextStyle(color: Colors.white),),),
        body: Column(children: [
          showLevel(level: widget.type),
          Observer(
            builder: (context) {
              return PageView(
                scrollDirection: Axis.horizontal,
                physics: const NeverScrollableScrollPhysics(),
                onPageChanged: (v) => viewModel.pageController.jumpToPage(v),
                controller: viewModel.pageController,
                children: viewModel.listItens
              );
            }
          ),
        ])
    );
  }


  // Widget itemGiphy(QuizViewModel viewModel) {
  //   return InkWell(
  //     onTap: ()=> viewModel.viewGiphy(),
  //     child: GifImage(
  //       controller: controller,
  //       image: AssetImage("assets/images/giphy.gif"),
  //     ),
  //   );
  // }

  Widget showLevel({required String level}) {
    return Observer(builder: (context) {
      return Container(
          height: 50,
          decoration: BoxDecoration(
                color: Colors.white,
              borderRadius: BorderRadius.circular(10.00)),
          child: Row(children: [
            SizedBox(width: 30,),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.00)),
              child: Image.asset(ImageConstants.instance.logo),),
            SizedBox(width: 15,),
            Text(level, style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: AppColors.primaryColor,
            ),)
          ],));
    });
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:gif/gif.dart';
import 'package:libras_quiz/utils/app_colors.dart';
import 'package:libras_quiz/utils/app_text_style.dart';
import 'package:libras_quiz/utils/image_constants.dart';
import 'package:libras_quiz/utils/loading_widget.dart';
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
        model.setListQuiz();
        model.setList(type: widget.type);
      },
      onPageBuilder: buildScaffoldBody,
    );
  }

  Widget buildScaffoldBody(BuildContext context, QuizViewModel viewModel) {
    return Scaffold(
        backgroundColor: AppColors.primaryColor,
        appBar: AppBar(
          centerTitle: true,
          actions: [
            Observer(
              builder: (context) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text("${viewModel.count}/5",style: AppTextStyle.textStyle(fontWeight: FontWeight.w600,size: 24,color: Colors.white)
                  ),
                );
              }
            )
          ],
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(10),
          child: Column(children: [
            showLevel(level: widget.type),
            const SizedBox(
              height: 80,
            ),
            Observer(builder: (context) {
              return Gif(
                height: 350,
                image: AssetImage("assets/images/gifs/numeros/0.gif"),
                controller: _controller,
                duration: const Duration(seconds: 2),
                autostart: Autostart.loop,
                placeholder: (context) => LoadingWidget.loading(AppColors.primaryColor, 25),
                onFetchCompleted: () {
                  _controller.reset();
                  _controller.forward();
                },
              );
            }),
            const SizedBox(
              height: 30,
            ),
            Observer(builder: (context) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _button(label: viewModel.quizModel.option1 ??"",viewModel: viewModel),
                  _button(label: viewModel.quizModel.option2 ??"",viewModel: viewModel),
                  _button(label: viewModel.quizModel.option3 ??"",viewModel: viewModel),
                  _button(label: viewModel.quizModel.option4 ??"",viewModel: viewModel),
                ],
              );
            })
          ]),
        ));
  }

  Widget _button({required String label, required QuizViewModel viewModel}) {
    return ElevatedButton(onPressed: () => viewModel.checkQuestion(selected: label), child: Text(label));
  }

  Widget showLevel({required String level}) {
    return Container(
        height: 50,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10.00)),
        child: Center(
          child: Row(
            children: [
              SizedBox(
                width: 30,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.00)),
                child: Image.asset(ImageConstants.instance.logo),
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                level,
                style: AppTextStyle.textStyle(fontWeight: FontWeight.w600,size: 24,color: AppColors.primaryColor)
              )
            ],
          ),
        ));
  }
}

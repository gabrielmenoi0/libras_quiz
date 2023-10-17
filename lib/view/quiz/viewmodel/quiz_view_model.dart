import 'package:flutter/material.dart';
import 'package:gif/gif.dart';
import 'package:libras_quiz/route/animated_navigator_route.dart';
import 'package:libras_quiz/view/base_view/base_view_model.dart';
import 'package:libras_quiz/view/giphy/giphy_view.dart';
import 'package:mobx/mobx.dart';

part 'quiz_view_model.g.dart';

class QuizViewModel = _QuizViewModelBase with _$QuizViewModel;

abstract class _QuizViewModelBase extends BaseViewModel with Store {
  @override
  void setContext(BuildContext context) => viewModelContext = context;

  @observable
  bool isFirstInit = true;


  @observable
  PageController pageController = PageController();

  @observable
  List<Widget> listItens =[];

  @action
  setPageView(GifController gifController){
    listItens.add(Column(
      children: [
        Gif(
          image: AssetImage("assets/images/giphy.gif"),
          controller: gifController,
          // if duration and fps is null, original gif fps will be used.
          //fps: 30,
          duration: const Duration(seconds: 2),
          autostart: Autostart.loop,
          placeholder: (context) => const Text('Loading...'),
          onFetchCompleted: () {
            gifController.reset();
            gifController.forward();
          },
        ),
      ],
    ));
  }


  @override
  void init() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {

    });
  }


}

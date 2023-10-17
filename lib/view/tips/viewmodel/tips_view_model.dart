import 'package:flutter/material.dart';
import 'package:libras_quiz/route/animated_navigator_route.dart';
import 'package:libras_quiz/view/giphy/giphy_view.dart';
import 'package:libras_quiz/view/tips/model/tips_model.dart';
import 'package:mobx/mobx.dart';
import 'package:libras_quiz/view/base_view/base_view_model.dart';

part 'tips_view_model.g.dart';

class TipsViewModel = _TipsViewModelBase with _$TipsViewModel;

abstract class _TipsViewModelBase extends BaseViewModel with Store {

  @override
  void setContext(BuildContext context) => viewModelContext = context;

  @override
  void init() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      listTipsView.clear();
      setTipsLetters();
      setTipsNumbers();
      type == "Alfabeto" ? listTipsView = listTipsLetters : listTipsView = listTipsNumbers;
      // type ="";
    });
  }

  @observable
  bool isFirstInit = true;

  @observable
  String type = '';

  @observable
  List<TipsModel> listTipsLetters =[];

  @observable
  List<TipsModel> listTipsView = [];

  @observable
  List<TipsModel> listTipsNumbers =[];

  @action
  void setTipsLetters(){
    listTipsLetters = [
      TipsModel(id: "A",value: "assets/images/giphy.gif"),
      TipsModel(id: "B",value: "assets/images/giphy.gif"),
      TipsModel(id: "C",value: "assets/images/giphy.gif"),
      TipsModel(id: "D",value: "assets/images/giphy.gif"),
      TipsModel(id: "E",value: "assets/images/giphy.gif"),
      TipsModel(id: "F",value: "assets/images/giphy.gif"),
      TipsModel(id: "G",value: "assets/images/giphy.gif"),
      TipsModel(id: "I",value: "assets/images/giphy.gif"),
      TipsModel(id: "J",value: "assets/images/giphy.gif"),
      TipsModel(id: "K",value: "assets/images/giphy.gif"),
      TipsModel(id: "L",value: "assets/images/giphy.gif"),
      TipsModel(id: "M",value: "assets/images/giphy.gif"),
      TipsModel(id: "N",value: "assets/images/giphy.gif"),
      TipsModel(id: "O",value: "assets/images/giphy.gif"),
      TipsModel(id: "P",value: "assets/images/giphy.gif"),
      TipsModel(id: "Q",value: "assets/images/giphy.gif"),
      TipsModel(id: "W",value: "assets/images/giphy.gif"),
      TipsModel(id: "X",value: "assets/images/giphy.gif"),
      TipsModel(id: "Y",value: "assets/images/giphy.gif"),
      TipsModel(id: "Z",value: "assets/images/giphy.gif"),
    ];
  }

  @action
  void setTipsNumbers(){
    listTipsNumbers = [
      TipsModel(id: "0",value: "assets/images/giphy.gif"),
      TipsModel(id: "1",value: "assets/images/giphy.gif"),
      TipsModel(id: "2",value: "assets/images/giphy.gif"),
      TipsModel(id: "3",value: "assets/images/giphy.gif"),
      TipsModel(id: "4",value: "assets/images/giphy.gif"),
      TipsModel(id: "5",value: "assets/images/giphy.gif"),
      TipsModel(id: "6",value: "assets/images/giphy.gif"),
      TipsModel(id: "7",value: "assets/images/giphy.gif"),
      TipsModel(id: "8",value: "assets/images/giphy.gif"),
      TipsModel(id: "9",value: "assets/images/giphy.gif"),
    ];
  }

  @action
  viewGiphy({required String title, required String giphy}){
    Navigator.push(
      viewModelContext,
      AnimatedNavigatorRoute(
          milliseconds: 300,
          child: GiphyView(title: title,giphy: giphy,),
          curve: Curves.easeInBack),
    );
  }


}

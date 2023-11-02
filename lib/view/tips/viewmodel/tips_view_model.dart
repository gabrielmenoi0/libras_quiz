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

  String filePath = "assets/images/gifs/numeros/";

  @observable
  bool isFirstInit = true;

  @observable
  String type = '';

  @observable
  List<TipsModel> listTipsLetters =[];

  @observable
  List<TipsModel> listTipsView = [];

  @observable
  List<TipsModel> listTipsNumbers = [];

  @action
  void setTipsLetters(){
    listTipsLetters = [
      // TipsModel(id: "A",value: "${filePath}giphy.gif"),
      // TipsModel(id: "B",value: "${filePath}giphy.gif"),
      // TipsModel(id: "C",value: "${filePath}giphy.gif"),
      // TipsModel(id: "D",value: "${filePath}giphy.gif"),
      // TipsModel(id: "E",value: "${filePath}giphy.gif"),
      // TipsModel(id: "F",value: "${filePath}giphy.gif"),
      // TipsModel(id: "G",value: "${filePath}giphy.gif"),
      // TipsModel(id: "H",value: "${filePath}giphy.gif"),
      // TipsModel(id: "I",value: "${filePath}giphy.gif"),
      // TipsModel(id: "J",value: "${filePath}giphy.gif"),
      // TipsModel(id: "K",value: "${filePath}giphy.gif"),
      // TipsModel(id: "L",value: "${filePath}giphy.gif"),
      // TipsModel(id: "M",value: "${filePath}giphy.gif"),
      // TipsModel(id: "N",value: "${filePath}giphy.gif"),
      // TipsModel(id: "O",value: "${filePath}giphy.gif"),
      // TipsModel(id: "P",value: "${filePath}giphy.gif"),
      // TipsModel(id: "Q",value: "${filePath}giphy.gif"),
      // TipsModel(id: "W",value: "${filePath}giphy.gif"),
      // TipsModel(id: "X",value: "${filePath}giphy.gif"),
      // TipsModel(id: "Y",value: "${filePath}giphy.gif"),
      // TipsModel(id: "Z",value: "${filePath}giphy.gif"),
    ];
  }

  @action
  void setTipsNumbers(){
    listTipsNumbers = [
      TipsModel(id: "0",value: "${filePath}0.gif"),
      TipsModel(id: "1",value: "${filePath}1.gif"),
      TipsModel(id: "2",value: "${filePath}2.gif"),
      TipsModel(id: "3",value: "${filePath}3.gif"),
      TipsModel(id: "4",value: "${filePath}4.gif"),
      TipsModel(id: "5",value: "${filePath}5.gif"),
      TipsModel(id: "6",value: "${filePath}6.gif"),
      TipsModel(id: "7",value: "${filePath}7.gif"),
      TipsModel(id: "8",value: "${filePath}8.gif"),
      TipsModel(id: "9",value: "${filePath}9.gif"),
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

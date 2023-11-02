import 'package:flutter/material.dart';
import 'package:libras_quiz/data/locale_manager.dart';
import 'package:libras_quiz/route/animated_navigator_route.dart';
import 'package:libras_quiz/utils/toast_helper.dart';
import 'package:libras_quiz/view/base_view/base_view_model.dart';
import 'package:libras_quiz/view/quiz/quiz_view.dart';
import 'package:libras_quiz/view/tips/tips_view.dart';
import 'package:mobx/mobx.dart';

part 'home_view_model.g.dart';

class HomeViewModel = _HomeViewModelBase with _$HomeViewModel;

abstract class _HomeViewModelBase extends BaseViewModel with Store {

  @observable
  String user = "";

  @observable
  bool expandedInstallmentTips = false;

  @observable
  bool expandedInstallmentLevel = false;

  @observable
  List<String> itemsTips = [
    'Alfabeto',
    'Números',
  ];

  @observable
  List<String> itemsLevel = [
    'Iniciante',
    'Intermediário',
    'Avançado',
  ];

  @observable
  bool level2 = false;

  @observable
  bool level3 = false;

  @observable
  String? selectedTips;

  @observable
  String? selectedNivels;

  @action
  expandedTips() async {
    expandedInstallmentTips = !expandedInstallmentTips;
  }

  @action
  expandedLevels() async {
    expandedInstallmentLevel = !expandedInstallmentLevel;
  }

  @action
  Future<void> getUser() async {
    user = localeManager.getStringValue(PreferencesKeys.TOKEN).toString().split(" ").first;
  }

  @override
  void init() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      getUser();
      getLevels();
    });
  }

  @override
  void setContext(BuildContext context) => viewModelContext = context;

  @action
  getLevels() async{
    level2 = localeManager.getBoolValue(PreferencesKeys.LEVEL2);
    level3 = localeManager.getBoolValue(PreferencesKeys.LEVEL3);
  }


  @action
  Future<void> setValue(String value) async {
    selectedTips = value;
    Navigator.push(
      viewModelContext,
      AnimatedNavigatorRoute(
          milliseconds: 300,
          child: TipsView(type: selectedTips ??""),
          curve: Curves.easeInOutQuart),
    );
    selectedTips == null;
  }

  @action
  Future<void> setValueLevel(String value) async {
    if(value =="Intermediário" && level2==false){
      return ToastHelper.onMessage(context: viewModelContext, message: "Nível bloqueado!!", isError: true);
    }
    if(value =="Avançado" && level3==false){
      return ToastHelper.onMessage(context: viewModelContext, message: "Nível bloqueado!!", isError: true);
    }
    selectedNivels = value;
    await Navigator.push(
      viewModelContext,
      AnimatedNavigatorRoute(
          milliseconds: 300,
          child: QuizView(type: selectedNivels ??""),
          curve: Curves.easeInOutQuart),
    );
    getLevels();
    selectedNivels == null;
  }
}

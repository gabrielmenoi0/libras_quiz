import 'package:flutter/material.dart';
import 'package:libras_quiz/route/animated_navigator_route.dart';
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
  bool expandedInstallmentDicas = false;

  @observable
  bool expandedInstallmentNiveis = false;

  @observable
  List<String> items = [
    'Alfabeto',
    'Números',
  ];

  @observable
  List<String> items2 = [
    'Iniciante',
    'Intermediário',
    'Avançado',
  ];

  @observable
  String? selectedTips;

  @observable
  String? selectedNivels;

  @action
  expandedTips() async {
    expandedInstallmentDicas = !expandedInstallmentDicas;
  }

  @action
  expandedLevels() async {
    expandedInstallmentNiveis = !expandedInstallmentNiveis;
  }

  @action
  Future<void> getUser() async {
    user = "Menoi";
  }

  @override
  void init() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      getUser();
    });
  }

  @override
  void setContext(BuildContext context) => viewModelContext = context;

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
  Future<void> setValueNivel(String value) async {
    selectedNivels = value;
    Navigator.push(
      viewModelContext,
      AnimatedNavigatorRoute(
          milliseconds: 300,
          child: QuizView(type: selectedNivels ??""),
          curve: Curves.easeInOutQuart),
    );
    selectedNivels == null;
  }
}

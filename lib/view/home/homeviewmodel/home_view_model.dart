import 'package:flutter/material.dart';
import 'package:libras_quiz/route/animated_navigator_route.dart';
import 'package:libras_quiz/view/base_view/base_view_model.dart';
import 'package:libras_quiz/view/tips/tips_view.dart';
import 'package:mobx/mobx.dart';

part 'home_view_model.g.dart';

class HomeViewModel = _HomeViewModelBase with _$HomeViewModel;

abstract class _HomeViewModelBase extends BaseViewModel with Store {

  @override
  void setContext(BuildContext context) => viewModelContext = context;


  @override
  void init() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      getUser();
    });
  }

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
  String? selectedValue;

  @observable
  String? selectedValue2;

  @action
  Future<void> getUser() async{
    user = "Menoi";
  }

  @action
  Future<void> setValue(String value) async {
    selectedValue = value;
    Navigator.push(
      viewModelContext,
      AnimatedNavigatorRoute(
          milliseconds: 300,
          child: TipsView(type: value,),
          curve: Curves.easeInOutQuart),
    );
  }


  @action
  Future<void> setValue2(String value) async{
    selectedValue2 = value;
    if(selectedValue2 == "Alfabetos"){

    }else{

    }
  }

  @action
  expandedDicas() async{
    expandedInstallmentDicas = !expandedInstallmentDicas;
  }

  @action
  expandedNiveis() async{
    expandedInstallmentNiveis = !expandedInstallmentNiveis;
  }
}

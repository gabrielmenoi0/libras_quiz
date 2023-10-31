import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:libras_quiz/data/locale_manager.dart';
import 'package:libras_quiz/view/base_view/base_view_model.dart';
import 'package:libras_quiz/view/home/home_view.dart';
import 'package:libras_quiz/view/login/login_view.dart';
import 'package:mobx/mobx.dart';
import 'package:kartal/kartal.dart';

part 'login_view_model.g.dart';

class LoginViewModel = _LoginViewModelBase with _$LoginViewModel;

abstract class _LoginViewModelBase extends BaseViewModel with Store {
  @override
  void setContext(BuildContext context) => viewModelContext = context;

  @override
  void init() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {});
  }

  @observable
  TextEditingController nameController = TextEditingController();

  @observable
  GlobalKey<FormState> loginKey = GlobalKey<FormState>();


  @action
  Future<void> login() async {
    try {
      if (!loginKey.currentState!.validate()) return;
      loginKey.currentState!.save();
      await localeManager.setStringValue(PreferencesKeys.TOKEN,nameController.text);
      Navigator.push(viewModelContext, MaterialPageRoute(builder: (context) => HomeView()));
      } catch (e, s) {
      print(e);
      print(s); 
    }
  }
}

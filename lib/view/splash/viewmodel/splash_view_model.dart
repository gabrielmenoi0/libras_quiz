import 'package:flutter/material.dart';
import 'package:libras_quiz/data/locale_manager.dart';
import 'package:libras_quiz/route/animated_navigator_route.dart';
import 'package:libras_quiz/view/base_view/base_view_model.dart';
import 'package:libras_quiz/view/home/home_view.dart';
import 'package:libras_quiz/view/login/login_view.dart';
import 'package:mobx/mobx.dart';
import 'package:kartal/kartal.dart';
part 'splash_view_model.g.dart';

class SplashViewModel = _SplashViewModelBase with _$SplashViewModel;

abstract class _SplashViewModelBase extends BaseViewModel with Store {
  @override
  void setContext(BuildContext context) => viewModelContext = context;

  @observable
  bool isFirstInit = true;

  @override
  void init() {
    startAnimationOnView();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _authorizationValidate();
    });
  }

  @action
  Future<void> startAnimationOnView() async {
    await Future.delayed(viewModelContext.durationLow);
    _changeFirstInit();
  }

  @action
  void _changeFirstInit() {
    isFirstInit = !isFirstInit;
  }

  Future<void> _authorizationValidate() async {
    await Future.delayed(Duration(seconds: 4));
    if (localeManager.getStringValue(PreferencesKeys.TOKEN).isEmpty) {
      _navigateToLogin();
    } else {
      _navigateToHome();
    }
  }

  @action
  _navigateToLogin() {
    Navigator.push(
      viewModelContext,
      AnimatedNavigatorRoute(
          milliseconds: 300, child: const LoginView(), curve: Curves.easeInOut),
    );
  }

  @action
  _navigateToHome() {
    Navigator.push(
        viewModelContext, MaterialPageRoute(builder: (context) => HomeView()));
  }
}

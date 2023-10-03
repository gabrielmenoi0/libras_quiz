import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:libras_quiz/view/base_view/base_view_model.dart';

part 'tips_view_model.g.dart';

class TipsViewModel = _TipsViewModelBase with _$TipsViewModel;

abstract class _TipsViewModelBase extends BaseViewModel with Store {
  @override
  void setContext(BuildContext context) => viewModelContext = context;

  @observable
  bool isFirstInit = true;

  @override
  void init() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {});
  }
}
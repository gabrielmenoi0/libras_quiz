// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tips_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TipsViewModel on _TipsViewModelBase, Store {
  late final _$isFirstInitAtom =
      Atom(name: '_TipsViewModelBase.isFirstInit', context: context);

  @override
  bool get isFirstInit {
    _$isFirstInitAtom.reportRead();
    return super.isFirstInit;
  }

  @override
  set isFirstInit(bool value) {
    _$isFirstInitAtom.reportWrite(value, super.isFirstInit, () {
      super.isFirstInit = value;
    });
  }

  late final _$typeAtom =
      Atom(name: '_TipsViewModelBase.type', context: context);

  @override
  String get type {
    _$typeAtom.reportRead();
    return super.type;
  }

  @override
  set type(String value) {
    _$typeAtom.reportWrite(value, super.type, () {
      super.type = value;
    });
  }

  late final _$listTipsLettersAtom =
      Atom(name: '_TipsViewModelBase.listTipsLetters', context: context);

  @override
  List<TipsModel> get listTipsLetters {
    _$listTipsLettersAtom.reportRead();
    return super.listTipsLetters;
  }

  @override
  set listTipsLetters(List<TipsModel> value) {
    _$listTipsLettersAtom.reportWrite(value, super.listTipsLetters, () {
      super.listTipsLetters = value;
    });
  }

  late final _$listTipsViewAtom =
      Atom(name: '_TipsViewModelBase.listTipsView', context: context);

  @override
  List<TipsModel> get listTipsView {
    _$listTipsViewAtom.reportRead();
    return super.listTipsView;
  }

  @override
  set listTipsView(List<TipsModel> value) {
    _$listTipsViewAtom.reportWrite(value, super.listTipsView, () {
      super.listTipsView = value;
    });
  }

  late final _$listTipsNumbersAtom =
      Atom(name: '_TipsViewModelBase.listTipsNumbers', context: context);

  @override
  List<TipsModel> get listTipsNumbers {
    _$listTipsNumbersAtom.reportRead();
    return super.listTipsNumbers;
  }

  @override
  set listTipsNumbers(List<TipsModel> value) {
    _$listTipsNumbersAtom.reportWrite(value, super.listTipsNumbers, () {
      super.listTipsNumbers = value;
    });
  }

  late final _$_TipsViewModelBaseActionController =
      ActionController(name: '_TipsViewModelBase', context: context);

  @override
  void setTipsLetters() {
    final _$actionInfo = _$_TipsViewModelBaseActionController.startAction(
        name: '_TipsViewModelBase.setTipsLetters');
    try {
      return super.setTipsLetters();
    } finally {
      _$_TipsViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTipsNumbers() {
    final _$actionInfo = _$_TipsViewModelBaseActionController.startAction(
        name: '_TipsViewModelBase.setTipsNumbers');
    try {
      return super.setTipsNumbers();
    } finally {
      _$_TipsViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic viewGiphy({required String title, required String giphy}) {
    final _$actionInfo = _$_TipsViewModelBaseActionController.startAction(
        name: '_TipsViewModelBase.viewGiphy');
    try {
      return super.viewGiphy(title: title, giphy: giphy);
    } finally {
      _$_TipsViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isFirstInit: ${isFirstInit},
type: ${type},
listTipsLetters: ${listTipsLetters},
listTipsView: ${listTipsView},
listTipsNumbers: ${listTipsNumbers}
    ''';
  }
}

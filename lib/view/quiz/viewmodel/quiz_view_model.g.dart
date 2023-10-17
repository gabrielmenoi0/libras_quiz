// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$QuizViewModel on _QuizViewModelBase, Store {
  late final _$isFirstInitAtom =
      Atom(name: '_QuizViewModelBase.isFirstInit', context: context);

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

  late final _$pageControllerAtom =
      Atom(name: '_QuizViewModelBase.pageController', context: context);

  @override
  PageController get pageController {
    _$pageControllerAtom.reportRead();
    return super.pageController;
  }

  @override
  set pageController(PageController value) {
    _$pageControllerAtom.reportWrite(value, super.pageController, () {
      super.pageController = value;
    });
  }

  late final _$listItensAtom =
      Atom(name: '_QuizViewModelBase.listItens', context: context);

  @override
  List<Widget> get listItens {
    _$listItensAtom.reportRead();
    return super.listItens;
  }

  @override
  set listItens(List<Widget> value) {
    _$listItensAtom.reportWrite(value, super.listItens, () {
      super.listItens = value;
    });
  }

  late final _$_QuizViewModelBaseActionController =
      ActionController(name: '_QuizViewModelBase', context: context);

  @override
  dynamic setPageView(GifController gifController) {
    final _$actionInfo = _$_QuizViewModelBaseActionController.startAction(
        name: '_QuizViewModelBase.setPageView');
    try {
      return super.setPageView(gifController);
    } finally {
      _$_QuizViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isFirstInit: ${isFirstInit},
pageController: ${pageController},
listItens: ${listItens}
    ''';
  }
}

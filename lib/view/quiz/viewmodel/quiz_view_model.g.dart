// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$QuizViewModel on _QuizViewModelBase, Store {
  late final _$countAtom =
      Atom(name: '_QuizViewModelBase.count', context: context);

  @override
  int get count {
    _$countAtom.reportRead();
    return super.count;
  }

  @override
  set count(int value) {
    _$countAtom.reportWrite(value, super.count, () {
      super.count = value;
    });
  }

  late final _$typeSelectedAtom =
      Atom(name: '_QuizViewModelBase.typeSelected', context: context);

  @override
  String get typeSelected {
    _$typeSelectedAtom.reportRead();
    return super.typeSelected;
  }

  @override
  set typeSelected(String value) {
    _$typeSelectedAtom.reportWrite(value, super.typeSelected, () {
      super.typeSelected = value;
    });
  }

  late final _$countAllAtom =
      Atom(name: '_QuizViewModelBase.countAll', context: context);

  @override
  int get countAll {
    _$countAllAtom.reportRead();
    return super.countAll;
  }

  @override
  set countAll(int value) {
    _$countAllAtom.reportWrite(value, super.countAll, () {
      super.countAll = value;
    });
  }

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

  late final _$quizModelAtom =
      Atom(name: '_QuizViewModelBase.quizModel', context: context);

  @override
  QuizModel get quizModel {
    _$quizModelAtom.reportRead();
    return super.quizModel;
  }

  @override
  set quizModel(QuizModel value) {
    _$quizModelAtom.reportWrite(value, super.quizModel, () {
      super.quizModel = value;
    });
  }

  late final _$listSelectedAtom =
      Atom(name: '_QuizViewModelBase.listSelected', context: context);

  @override
  List<QuizModel> get listSelected {
    _$listSelectedAtom.reportRead();
    return super.listSelected;
  }

  @override
  set listSelected(List<QuizModel> value) {
    _$listSelectedAtom.reportWrite(value, super.listSelected, () {
      super.listSelected = value;
    });
  }

  late final _$listLevel1Atom =
      Atom(name: '_QuizViewModelBase.listLevel1', context: context);

  @override
  List<QuizModel> get listLevel1 {
    _$listLevel1Atom.reportRead();
    return super.listLevel1;
  }

  @override
  set listLevel1(List<QuizModel> value) {
    _$listLevel1Atom.reportWrite(value, super.listLevel1, () {
      super.listLevel1 = value;
    });
  }

  late final _$listLevel2Atom =
      Atom(name: '_QuizViewModelBase.listLevel2', context: context);

  @override
  List<QuizModel> get listLevel2 {
    _$listLevel2Atom.reportRead();
    return super.listLevel2;
  }

  @override
  set listLevel2(List<QuizModel> value) {
    _$listLevel2Atom.reportWrite(value, super.listLevel2, () {
      super.listLevel2 = value;
    });
  }

  late final _$listLevel3Atom =
      Atom(name: '_QuizViewModelBase.listLevel3', context: context);

  @override
  List<QuizModel> get listLevel3 {
    _$listLevel3Atom.reportRead();
    return super.listLevel3;
  }

  @override
  set listLevel3(List<QuizModel> value) {
    _$listLevel3Atom.reportWrite(value, super.listLevel3, () {
      super.listLevel3 = value;
    });
  }

  late final _$_QuizViewModelBaseActionController =
      ActionController(name: '_QuizViewModelBase', context: context);

  @override
  void setList({required String type}) {
    final _$actionInfo = _$_QuizViewModelBaseActionController.startAction(
        name: '_QuizViewModelBase.setList');
    try {
      return super.setList(type: type);
    } finally {
      _$_QuizViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void checkQuestion({required String selected}) {
    final _$actionInfo = _$_QuizViewModelBaseActionController.startAction(
        name: '_QuizViewModelBase.checkQuestion');
    try {
      return super.checkQuestion(selected: selected);
    } finally {
      _$_QuizViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
count: ${count},
typeSelected: ${typeSelected},
countAll: ${countAll},
isFirstInit: ${isFirstInit},
quizModel: ${quizModel},
listSelected: ${listSelected},
listLevel1: ${listLevel1},
listLevel2: ${listLevel2},
listLevel3: ${listLevel3}
    ''';
  }
}

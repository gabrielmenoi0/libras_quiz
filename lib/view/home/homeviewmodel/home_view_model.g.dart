// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeViewModel on _HomeViewModelBase, Store {
  late final _$userAtom =
      Atom(name: '_HomeViewModelBase.user', context: context);

  @override
  String get user {
    _$userAtom.reportRead();
    return super.user;
  }

  @override
  set user(String value) {
    _$userAtom.reportWrite(value, super.user, () {
      super.user = value;
    });
  }

  late final _$expandedInstallmentDicasAtom = Atom(
      name: '_HomeViewModelBase.expandedInstallmentDicas', context: context);

  @override
  bool get expandedInstallmentDicas {
    _$expandedInstallmentDicasAtom.reportRead();
    return super.expandedInstallmentDicas;
  }

  @override
  set expandedInstallmentDicas(bool value) {
    _$expandedInstallmentDicasAtom
        .reportWrite(value, super.expandedInstallmentDicas, () {
      super.expandedInstallmentDicas = value;
    });
  }

  late final _$expandedInstallmentNiveisAtom = Atom(
      name: '_HomeViewModelBase.expandedInstallmentNiveis', context: context);

  @override
  bool get expandedInstallmentNiveis {
    _$expandedInstallmentNiveisAtom.reportRead();
    return super.expandedInstallmentNiveis;
  }

  @override
  set expandedInstallmentNiveis(bool value) {
    _$expandedInstallmentNiveisAtom
        .reportWrite(value, super.expandedInstallmentNiveis, () {
      super.expandedInstallmentNiveis = value;
    });
  }

  late final _$itemsAtom =
      Atom(name: '_HomeViewModelBase.items', context: context);

  @override
  List<String> get items {
    _$itemsAtom.reportRead();
    return super.items;
  }

  @override
  set items(List<String> value) {
    _$itemsAtom.reportWrite(value, super.items, () {
      super.items = value;
    });
  }

  late final _$items2Atom =
      Atom(name: '_HomeViewModelBase.items2', context: context);

  @override
  List<String> get items2 {
    _$items2Atom.reportRead();
    return super.items2;
  }

  @override
  set items2(List<String> value) {
    _$items2Atom.reportWrite(value, super.items2, () {
      super.items2 = value;
    });
  }

  late final _$selectedTipsAtom =
      Atom(name: '_HomeViewModelBase.selectedTips', context: context);

  @override
  String? get selectedTips {
    _$selectedTipsAtom.reportRead();
    return super.selectedTips;
  }

  @override
  set selectedTips(String? value) {
    _$selectedTipsAtom.reportWrite(value, super.selectedTips, () {
      super.selectedTips = value;
    });
  }

  late final _$selectedNivelsAtom =
      Atom(name: '_HomeViewModelBase.selectedNivels', context: context);

  @override
  String? get selectedNivels {
    _$selectedNivelsAtom.reportRead();
    return super.selectedNivels;
  }

  @override
  set selectedNivels(String? value) {
    _$selectedNivelsAtom.reportWrite(value, super.selectedNivels, () {
      super.selectedNivels = value;
    });
  }

  late final _$expandedTipsAsyncAction =
      AsyncAction('_HomeViewModelBase.expandedTips', context: context);

  @override
  Future expandedTips() {
    return _$expandedTipsAsyncAction.run(() => super.expandedTips());
  }

  late final _$expandedLevelsAsyncAction =
      AsyncAction('_HomeViewModelBase.expandedLevels', context: context);

  @override
  Future expandedLevels() {
    return _$expandedLevelsAsyncAction.run(() => super.expandedLevels());
  }

  late final _$getUserAsyncAction =
      AsyncAction('_HomeViewModelBase.getUser', context: context);

  @override
  Future<void> getUser() {
    return _$getUserAsyncAction.run(() => super.getUser());
  }

  late final _$setValueAsyncAction =
      AsyncAction('_HomeViewModelBase.setValue', context: context);

  @override
  Future<void> setValue(String value) {
    return _$setValueAsyncAction.run(() => super.setValue(value));
  }

  late final _$setValueNivelAsyncAction =
      AsyncAction('_HomeViewModelBase.setValueNivel', context: context);

  @override
  Future<void> setValueNivel(String value) {
    return _$setValueNivelAsyncAction.run(() => super.setValueNivel(value));
  }

  @override
  String toString() {
    return '''
user: ${user},
expandedInstallmentDicas: ${expandedInstallmentDicas},
expandedInstallmentNiveis: ${expandedInstallmentNiveis},
items: ${items},
items2: ${items2},
selectedTips: ${selectedTips},
selectedNivels: ${selectedNivels}
    ''';
  }
}

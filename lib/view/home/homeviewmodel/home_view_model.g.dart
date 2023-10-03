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

  late final _$selectedValueAtom =
      Atom(name: '_HomeViewModelBase.selectedValue', context: context);

  @override
  String? get selectedValue {
    _$selectedValueAtom.reportRead();
    return super.selectedValue;
  }

  @override
  set selectedValue(String? value) {
    _$selectedValueAtom.reportWrite(value, super.selectedValue, () {
      super.selectedValue = value;
    });
  }

  late final _$selectedValue2Atom =
      Atom(name: '_HomeViewModelBase.selectedValue2', context: context);

  @override
  String? get selectedValue2 {
    _$selectedValue2Atom.reportRead();
    return super.selectedValue2;
  }

  @override
  set selectedValue2(String? value) {
    _$selectedValue2Atom.reportWrite(value, super.selectedValue2, () {
      super.selectedValue2 = value;
    });
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

  late final _$setValue2AsyncAction =
      AsyncAction('_HomeViewModelBase.setValue2', context: context);

  @override
  Future<void> setValue2(String value) {
    return _$setValue2AsyncAction.run(() => super.setValue2(value));
  }

  late final _$expandedDicasAsyncAction =
      AsyncAction('_HomeViewModelBase.expandedDicas', context: context);

  @override
  Future expandedDicas() {
    return _$expandedDicasAsyncAction.run(() => super.expandedDicas());
  }

  late final _$expandedNiveisAsyncAction =
      AsyncAction('_HomeViewModelBase.expandedNiveis', context: context);

  @override
  Future expandedNiveis() {
    return _$expandedNiveisAsyncAction.run(() => super.expandedNiveis());
  }

  @override
  String toString() {
    return '''
user: ${user},
expandedInstallmentDicas: ${expandedInstallmentDicas},
expandedInstallmentNiveis: ${expandedInstallmentNiveis},
items: ${items},
items2: ${items2},
selectedValue: ${selectedValue},
selectedValue2: ${selectedValue2}
    ''';
  }
}

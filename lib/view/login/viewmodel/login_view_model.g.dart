// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LoginViewModel on _LoginViewModelBase, Store {
  late final _$nameControllerAtom =
      Atom(name: '_LoginViewModelBase.nameController', context: context);

  @override
  TextEditingController get nameController {
    _$nameControllerAtom.reportRead();
    return super.nameController;
  }

  @override
  set nameController(TextEditingController value) {
    _$nameControllerAtom.reportWrite(value, super.nameController, () {
      super.nameController = value;
    });
  }

  late final _$loginKeyAtom =
      Atom(name: '_LoginViewModelBase.loginKey', context: context);

  @override
  GlobalKey<FormState> get loginKey {
    _$loginKeyAtom.reportRead();
    return super.loginKey;
  }

  @override
  set loginKey(GlobalKey<FormState> value) {
    _$loginKeyAtom.reportWrite(value, super.loginKey, () {
      super.loginKey = value;
    });
  }

  late final _$loginAsyncAction =
      AsyncAction('_LoginViewModelBase.login', context: context);

  @override
  Future<void> login() {
    return _$loginAsyncAction.run(() => super.login());
  }

  @override
  String toString() {
    return '''
nameController: ${nameController},
loginKey: ${loginKey}
    ''';
  }
}

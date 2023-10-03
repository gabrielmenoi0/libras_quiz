import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:libras_quiz/data/locale_manager.dart';


abstract class BaseViewModel {

  BaseViewModel() {
    init();
  }

  /// SEMPRE PASSE O CONTEXT PARA O VIEW MODEL, ASSIM PODEMOS TER CONTROLE DE NAVEGAÇÃO E OUTROS ELEMENTOS DA VIEW
  late BuildContext viewModelContext;

  /// GERENCIADOR DE CACHE
  LocaleManager localeManager = LocaleManager.instance;

  ///SINGLETON
  final getIt = GetIt.instance;

  ///MÉTODOS DEFAULT
  void setContext(BuildContext context);
  void init();
}

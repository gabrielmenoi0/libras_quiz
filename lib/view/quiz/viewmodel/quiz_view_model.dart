import 'package:flutter/material.dart';
import 'package:gif/gif.dart';
import 'package:kartal/kartal.dart';
import 'package:libras_quiz/data/locale_manager.dart';
import 'package:libras_quiz/route/animated_navigator_route.dart';
import 'package:libras_quiz/view/base_view/base_view_model.dart';
import 'package:libras_quiz/view/giphy/giphy_view.dart';
import 'package:libras_quiz/view/quiz/model/quiz_model.dart';
import 'package:mobx/mobx.dart';

part 'quiz_view_model.g.dart';

class QuizViewModel = _QuizViewModelBase with _$QuizViewModel;

abstract class _QuizViewModelBase extends BaseViewModel with Store {

  @override
  void setContext(BuildContext context) => viewModelContext = context;

  @override
  void init() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
    });
  }

  @observable
  int count  =0;

  @observable
  String typeSelected ="";

  @observable
  int countAll  =0;

  @observable
  bool isFirstInit = true;

  @observable
  QuizModel quizModel = QuizModel();

  @observable
  List<QuizModel> listSelected = [];

  @observable
  List<QuizModel> listLevel1 =[
    QuizModel(id: 1,giphy: "assets/images/giphy.gif",check: "olá" ,option1: "tchau",option2: "bom dia",option3: "olá",option4: "saudação"),
    QuizModel(id: 2,giphy: "assets/images/giphy.gif",check: "obrigado" ,option1: "obrigado",option2: "amém",option3: "gratidão",option4: "gratificante"),
    QuizModel(id: 3,giphy: "assets/images/giphy.gif",check: "água" ,option1: "torneira",option2: "gota",option3: "vazar",option4: "água"),
    QuizModel(id: 4,giphy: "assets/images/giphy.gif",check: "amor" ,option1: "coração",option2: "amor",option3: "paixão",option4: "namoro"),
    QuizModel(id: 5,giphy: "assets/images/giphy.gif",check: "família" ,option1: "sala de aula",option2: "família",option3: "pessoas",option4: "grupo"),
  ]..shuffle();

  @observable
  List<QuizModel> listLevel2 =[
    QuizModel(id: 1,giphy: "assets/images/giphy.gif",check: "Eu gosto de nadar na piscina" ,option1: "Eu gosto de nadar na piscina",option2: "eu quero nadar na piscina",option3: "vocês gostam de nadar",option4: "eu quero ver a piscina"),
    QuizModel(id: 2,giphy: "assets/images/giphy.gif",check: "eu estudo muito" ,option1: "Ela vai ao mercado",option2: "eu estudo muito",option3: "Eu gosto de dançar",option4: "Ele está com fome"),
    QuizModel(id: 3,giphy: "assets/images/giphy.gif",check: "Meu aniversário é em julho" ,option1: "Eu gosto de nadar no mar",option2: "la tem um cachorro fofo",option3: "Eles gostam de pizza",option4: "Meu aniversário é em julho"),
    QuizModel(id: 4,giphy: "assets/images/giphy.gif",check: "Eu gosto de viajar de avião" ,option1: "Ela gosta de nadar na piscina.",option2: "Eles preferem bicicletas.",option3: "Ele come pizza.",option4: "Eu gosto de viajar de avião"),
    QuizModel(id: 5,giphy: "assets/images/giphy.gif",check: "Eu tenho dois irmãos e uma irmã" ,option1: "Eu tenho dois irmãos e uma irmã",option2: "Ela tem três gatos e um cachorro",option3: "Eles gostam de nadar no rio",option4: "Ele tem muitos brinquedos"),
  ]..shuffle();


  @observable
  List<QuizModel> listLevel3 =[
    QuizModel(id: 1,giphy: "assets/images/giphy.gif",check: "A música clássica me inspira" ,option1: "Eles comem pizza no jantar",option2: "Eu gosto de nadar na piscina",option3: "Ela tem um cachorro fofo",option4: "A música clássica me inspira"),
    QuizModel(id: 2,giphy: "assets/images/giphy.gif",check: "Eu tenho que estudar para o exame final" ,option1: "Eles comem pizza no almoço",option2: "Eu gosto de correr no parque",option3: "Ela tem um livro interessante",option4: "Eu tenho que estudar para o exame final"),
    QuizModel(id: 3,giphy: "assets/images/giphy.gif",check: "Minha família está indo acampar nas montanhas" ,option1: "Eu gosto de nadar na praia",option2: "Eles assistem filmes à noite",option3: "Ele tem um cachorro fofo",option4: "Minha família está indo acampar nas montanhas"),
    QuizModel(id: 4,giphy: "assets/images/giphy.gif",check: "Eu tenho muitos sonhos e objetivos na vida" ,option1: "Eu tenho muitos sonhos e objetivos na vida",option2: "Ela gosta de jogar futebol",option3: "Eles comem pizza no jantar",option4: "Ele assiste televisão à noite"),
    QuizModel(id: 5,giphy: "assets/images/giphy.gif",check: "Eu tenho dois irmãos e uma irmã" ,option1: "Eu tenho dois irmãos e uma irmã",option2: "Ela tem três gatos e um cachorro",option3: "Eles gostam de nadar no rio",option4: "Ele tem muitos brinquedos"),
  ]..shuffle();


  @action
  void setList({required String type}){
    listSelected.clear();
    if(type =="Iniciante"){
      listSelected = listLevel1;
    }else if(type =="Intermediário"){
      listSelected = listLevel2;
    }else{
      listSelected = listLevel3;
    }
    typeSelected = type;
    quizModel = listSelected.first;
  }

  @action
  void checkQuestion({required String selected}){
    if(selected == quizModel.check){
      count ++;
    }
    if(countAll==4){
      /// finish
      if(count>=3){
        if(typeSelected == "Iniciante"){
          localeManager.setBoolValue(PreferencesKeys.LEVEL2, true);
        }else if(typeSelected == "Intermediário"){
          localeManager.setBoolValue(PreferencesKeys.LEVEL3, true);
        }
      }
      Navigator.pop(viewModelContext);
    }
    countAll++;
    listSelected.remove(quizModel);
    quizModel= listSelected[0];
  }


}

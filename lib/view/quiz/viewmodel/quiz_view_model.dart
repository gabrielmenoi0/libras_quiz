import 'package:flutter/material.dart';
import 'package:gif/gif.dart';
import 'package:kartal/kartal.dart';
import 'package:libras_quiz/data/locale_manager.dart';
import 'package:libras_quiz/route/animated_navigator_route.dart';
import 'package:libras_quiz/utils/toast_helper.dart';
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
      setListQuiz();
    });
  }

  String filePath = "assets/images/gifs/numeros";


  @observable
  int count = 0;

  @observable
  String typeSelected ="";

  @observable
  int countAll = 0;

  @observable
  bool isFirstInit = true;

  @observable
  QuizModel quizModel = QuizModel();

  @observable
  List<QuizModel> listSelected = [];

  @observable
  List<QuizModel> listLevel1 = [];

  @observable
  List<QuizModel> listLevel2 = [];

  @observable
  List<QuizModel> listLevel3 = [];


  void setListQuiz(){
    listLevel1 =[
      QuizModel(id: 1,giphy: "${filePath}0.gif",check: "Olá" ,option1: "Tchau",option2: "Bom dia",option3: "Olá",option4: "Saudação"),
      QuizModel(id: 2,giphy: "${filePath}giphy.gif",check: "Obrigado" ,option1: "Obrigado",option2: "Amém",option3: "Gratidão",option4: "Gratificante"),
      QuizModel(id: 3,giphy: "${filePath}giphy.gif",check: "Água" ,option1: "Torneira",option2: "Gota",option3: "Vazar",option4: "Água"),
      QuizModel(id: 4,giphy: "${filePath}giphy.gif",check: "Amor" ,option1: "Coração",option2: "Amor",option3: "Paixão",option4: "Namoro"),
      QuizModel(id: 5,giphy: "${filePath}giphy.gif",check: "Família" ,option1: "Sala de aula",option2: "Família",option3: "Pessoas",option4: "Grupo"),
    ]..shuffle();

    listLevel2 =[
      QuizModel(id: 1,giphy: "${filePath}giphy.gif",check: "Eu gosto de nadar na piscina" ,option1: "Eu gosto de nadar na piscina",option2: "Eu quero nadar na piscina",option3: "Vocês gostam de nadar",option4: "Eu quero ver a piscina"),
    QuizModel(id: 2,giphy: "${filePath}giphy.gif",check: "Eu estudo muito" ,option1: "Ela vai ao mercado",option2: "eu estudo muito",option3: "Eu gosto de dançar",option4: "Ele está com fome"),
    QuizModel(id: 3,giphy: "${filePath}giphy.gif",check: "Meu aniversário é em julho" ,option1: "Eu gosto de nadar no mar",option2: "La tem um cachorro fofo",option3: "Eles gostam de pizza",option4: "Meu aniversário é em julho"),
    QuizModel(id: 4,giphy: "${filePath}giphy.gif",check: "Eu gosto de viajar de avião" ,option1: "Ela gosta de nadar na piscina.",option2: "Eles preferem bicicletas.",option3: "Ele come pizza.",option4: "Eu gosto de viajar de avião"),
    QuizModel(id: 5,giphy: "${filePath}giphy.gif",check: "Eu tenho dois irmãos e uma irmã" ,option1: "Eu tenho dois irmãos e uma irmã",option2: "Ela tem três gatos e um cachorro",option3: "Eles gostam de nadar no rio",option4: "Ele tem muitos brinquedos"),
    ]..shuffle();

    listLevel3 = [
      QuizModel(id: 1,giphy: "${filePath}giphy.gif",check: "A música clássica me inspira" ,option1: "Eles comem pizza no jantar",option2: "Eu gosto de nadar na piscina",option3: "Ela tem um cachorro fofo",option4: "A música clássica me inspira"),
      QuizModel(id: 2,giphy: "${filePath}giphy.gif",check: "Eu tenho que estudar para o exame final" ,option1: "Eles comem pizza no almoço",option2: "Eu gosto de correr no parque",option3: "Ela tem um livro interessante",option4: "Eu tenho que estudar para o exame final"),
      QuizModel(id: 3,giphy: "${filePath}giphy.gif",check: "Minha família está indo acampar nas montanhas" ,option1: "Eu gosto de nadar na praia",option2: "Eles assistem filmes à noite",option3: "Ele tem um cachorro fofo",option4: "Minha família está indo acampar nas montanhas"),
      QuizModel(id: 4,giphy: "${filePath}giphy.gif",check: "Eu tenho muitos sonhos e objetivos na vida" ,option1: "Eu tenho muitos sonhos e objetivos na vida",option2: "Ela gosta de jogar futebol",option3: "Eles comem pizza no jantar",option4: "Ele assiste televisão à noite"),
      QuizModel(id: 5,giphy: "${filePath}giphy.gif",check: "Na próxima semana, vou visitar meus avós em outra cidade" ,option1: "Na próxima semana, planejo uma viagem para visitar meus avós que moram em uma cidade distante",option2: "Na próxima semana, vou visitar meus avós em outra cidade",option3: "Em breve, tenho programado uma viagem para ver meus avós em uma cidade diferente",option4: "Durante a semana que vem, tenho a intenção de ir até outra cidade para passar um tempo com meus avós"),
    ]..shuffle();
  }

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
    bool check = selected == quizModel.check;
    if(selected == quizModel.check){
      count ++;
      ToastHelper.onMessage(context: viewModelContext, message: "Resposta correta!", isError: false);
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
    if(check == false){
      ToastHelper.onMessage(context: viewModelContext, message: "Resposta inccorreta!", isError: true);
    }
  }


}

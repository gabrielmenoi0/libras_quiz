import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:libras_quiz/utils/app_colors.dart';
import 'package:libras_quiz/utils/image_constants.dart';
import 'package:libras_quiz/view/base_view/base_view.dart';
import 'package:libras_quiz/view/tips/viewmodel/tips_view_model.dart';

class TipsView extends StatelessWidget {
  final String type;

  const TipsView({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    return BaseView<TipsViewModel>(
      viewModel: TipsViewModel(),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
      },
      onPageBuilder: buildScaffoldBody,
    );
  }

  Widget buildScaffoldBody(BuildContext context, TipsViewModel viewModel) {
    return Scaffold(
      appBar: AppBar(backgroundColor: AppColors.primaryColor,),
      backgroundColor: AppColors.primaryColor,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            showType(),
            GridView.builder(
              gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisExtent: 20),
              itemBuilder: (context, index) {
                return Text(
                  '${index + 1}º  -  ',
                );
              },
              itemCount: 2,
            )
          ],
        ),
      ),
    );
  }

  Widget showType() {
    return Container(
        height: 50,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40.0),
              topRight: Radius.circular(40.0),
              bottomRight: Radius.circular(40.0),
              bottomLeft: Radius.circular(40.0),
            )),
        child: Row(children: [
          SizedBox(width: 30,),
          Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20000.0),
                  topRight: Radius.circular(20000.0),
                  bottomRight: Radius.circular(20000.0),
                  bottomLeft: Radius.circular(20000.0),
                )),
            child: Image.asset(ImageConstants.instance.logo),),
          SizedBox(width: 70,),
          Text(type, style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: AppColors.primaryColor,
          ),)
        ],));
  }
}
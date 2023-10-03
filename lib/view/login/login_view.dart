import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:libras_quiz/utils/app_colors.dart';
import 'package:libras_quiz/utils/image_constants.dart';
import 'package:libras_quiz/view/base_view/base_view.dart';
import 'package:libras_quiz/view/login/viewmodel/login_view_model.dart';
import 'package:libras_quiz/view/splash/viewmodel/splash_view_model.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<LoginViewModel>(
      viewModel: LoginViewModel(),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
      },
      onPageBuilder: buildScaffoldBody,
    );
  }

  Widget buildScaffoldBody(BuildContext context, LoginViewModel viewModel) {
    return Observer(builder: (_) {
      return Scaffold(
        backgroundColor: AppColors.primaryColor,
        body: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                SizedBox(
                  height: 175,
                ),
                Image.asset(
                  ImageConstants.instance.marca,
                  height: 75,
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Faça login com as principais plataformas",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 50,
                ),
                CupertinoButton(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  padding: EdgeInsets.zero,
                  color: Colors.white,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.black),
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                    ),
                    height: 44,
                    child: Row(
                      children: [
                        Image.asset(
                          ImageConstants.instance.google,
                          width: 24,
                          height: 24,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Flexible(
                          child: Text(
                            "Entrar com o Google",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              inherit: false,
                              fontSize: 44 * 0.43,
                              color: Colors.black,
                              // defaults styles aligned with https://github.com/flutter/flutter/blob/master/packages/flutter/lib/src/cupertino/text_theme.dart#L16
                              fontFamily: '.SF Pro Text',
                              letterSpacing: -0.41,
                            ),
                          ),
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                  ),
                  onPressed: () async {
                    await viewModel.login();
                  },
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}

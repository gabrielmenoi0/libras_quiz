import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:kartal/kartal.dart';
import 'package:libras_quiz/utils/app_colors.dart';
import 'package:libras_quiz/utils/image_constants.dart';
import 'package:libras_quiz/view/base_view/base_view.dart';
import 'package:libras_quiz/view/splash/viewmodel/splash_view_model.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<SplashViewModel>(
      viewModel: SplashViewModel(),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
      },
      onPageBuilder: buildScaffoldBody,
    );
  }

  Widget buildScaffoldBody(BuildContext context, SplashViewModel viewModel) {
    return Observer(builder: (_) {
      return Scaffold(
        backgroundColor: AppColors.primaryColor,
        body: Column(
          children: [
            Expanded(
              child: Center(
                child: AnimatedOpacity(
                  duration: context.durationNormal,
                  opacity: viewModel.isFirstInit ? 0 : 1,
                  child: Padding(
                      padding: context.paddingHigh,
                      child: Image.asset(ImageConstants.instance.logo)),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}

import 'package:discord_app_redesign/src/shared/themes/app_colors.dart';
import 'package:discord_app_redesign/src/shared/themes/app_svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 100,
          child: SvgPicture.asset(
            AppSvg.iconClyde,
            color: AppColors.azoxo,
          ),
        ),
      ),
    );
  }
}

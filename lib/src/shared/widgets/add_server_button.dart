import 'package:discord_app_redesign/src/shared/themes/app_colors.dart';
import 'package:discord_app_redesign/src/shared/themes/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddServerButton extends StatelessWidget {
  final String label, iconSvg;

  const AddServerButton({
    Key? key,
    required this.label,
    required this.iconSvg,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 246,
      child: InkWell(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: AppColors.escuro,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(width: 10),
              SvgPicture.asset(iconSvg),
              const SizedBox(width: 10),
              Text(
                label,
                style: TextStyles.subtitle1
                    .copyWith(color: AppColors.totalmenteBranco),
              ),
              const Spacer(),
              Icon(
                Icons.keyboard_arrow_right_rounded,
                color: AppColors.cinxo,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

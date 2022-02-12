import 'package:discord_app_redesign/src/shared/themes/app_colors.dart';
import 'package:discord_app_redesign/src/shared/themes/app_images.dart';
import 'package:discord_app_redesign/src/shared/themes/app_text_styles.dart';
import 'package:discord_app_redesign/src/shared/widgets/proflie_pic_widget.dart';
import 'package:flutter/material.dart';

class ChatPreviewWidget extends StatelessWidget {
  final String nick;
  final String last;
  final String date;

  const ChatPreviewWidget({
    Key? key,
    required this.nick,
    required this.last,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ProfliePicWidget.large(
          pic: AppImages.jujubaAzulPic,
        ),
        SizedBox(width: 15),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    nick,
                    style: TextStyles.headline6
                        .copyWith(color: AppColors.totalmenteBranco),
                  ),
                  Spacer(),
                  Text(
                    date,
                    style: TextStyles.button.copyWith(color: AppColors.azoxo),
                  ),
                ],
              ),
              SizedBox(height: 4),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.done_all_rounded,
                        size: 18,
                        color: AppColors.online,
                      ),
                      SizedBox(width: 5),
                      Text(
                        last,
                        style: TextStyles.subtitle1
                            .copyWith(color: AppColors.cinxo),
                      ),
                    ],
                  ),
                  Spacer(),
                  Icon(
                    Icons.lock_rounded,
                    size: 18,
                    color: AppColors.cinxo,
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

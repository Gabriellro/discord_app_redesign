import 'package:discord_app_redesign/src/shared/themes/app_images.dart';
import 'package:discord_app_redesign/src/shared/widgets/avatar.dart';
import 'package:flutter/material.dart';

import 'package:discord_app_redesign/src/shared/themes/app_colors.dart';

class ProfliePicWidget extends StatelessWidget {
  final String? pic;
  final VoidCallback? onTap;
  final double picSize;
  final double statusSize;

  const ProfliePicWidget({
    Key? key,
    this.pic,
    this.onTap,
    required this.picSize,
    required this.statusSize,
  }) : super(key: key);

  const ProfliePicWidget.small({
    Key? key,
    this.pic,
    this.onTap,
  })  : picSize = 24,
        statusSize = 6,
        super(key: key);
  const ProfliePicWidget.medium({
    Key? key,
    this.pic,
    this.onTap,
  })  : picSize = 36,
        statusSize = 10,
        super(key: key);

  const ProfliePicWidget.large({
    Key? key,
    this.pic,
    this.onTap,
  })  : picSize = 50,
        statusSize = 14,
        super(key: key);

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: _profliePicWidget(context),
    );
  }

  Widget _profliePicWidget(BuildContext context) {
    if (pic != null) {
      return Stack(
        children: [
          CustomPaint(
            painter: AvatarPainter(),
            child: SizedBox(
              width: picSize,
              height: picSize,
              child: Image.asset(pic!),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              height: statusSize,
              width: statusSize,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.online,
              ),
            ),
          ),
        ],
      );
    } else {
      return Stack(
        children: [
          CustomPaint(
            painter: AvatarPainter(),
            child: SizedBox(
              width: picSize,
              height: picSize,
              child: Image.asset(AppImages.glurdoPic),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              height: statusSize,
              width: statusSize,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.online,
              ),
            ),
          ),
        ],
      );
    }
  }
}

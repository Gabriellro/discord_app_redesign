import 'package:flutter/material.dart';

import 'package:discord_app_redesign/src/shared/themes/app_colors.dart';
import 'package:discord_app_redesign/src/shared/themes/app_images.dart';
import 'package:discord_app_redesign/src/shared/themes/app_text_styles.dart';
import 'package:discord_app_redesign/src/shared/widgets/proflie_pic_widget.dart';

class ChannelVoiceWidget extends StatelessWidget {
  final String label;
  final bool isMuted, hasUser;

  const ChannelVoiceWidget({
    Key? key,
    required this.label,
    this.isMuted = false,
    this.hasUser = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Icon(
                Icons.volume_up_rounded,
                color: AppColors.cinxo,
              ),
              const SizedBox(width: 10),
              Text(
                label,
                style: TextStyles.button.copyWith(
                  color: AppColors.totalmenteBranco,
                ),
              ),
              const Spacer(),
            ],
          ),
          const SizedBox(height: 10),
          hasUser
              ? Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const ProfliePicWidget(
                            picSize: 24,
                            statusSize: 6,
                            pic: AppImages.jujubaAzulPic,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            "JujubaAzul",
                            style: TextStyles.button.copyWith(
                              color: AppColors.cinxo,
                            ),
                          ),
                          const Spacer(),
                          const Icon(
                            Icons.mic_off_rounded,
                            size: 18,
                            color: AppColors.naoPertube,
                          )
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const ProfliePicWidget(
                            picSize: 24,
                            statusSize: 6,
                            pic: AppImages.jujubaAzulPic,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            "JujubaAzul",
                            style: TextStyles.button.copyWith(
                              color: AppColors.cinxo,
                            ),
                          ),
                          const Spacer(),
                          isMuted
                              ? const Icon(
                                  Icons.mic_off_rounded,
                                  size: 18,
                                  color: AppColors.naoPertube,
                                )
                              : SizedBox.shrink()
                        ],
                      ),
                    ],
                  ),
                )
              : SizedBox.shrink()
        ],
      ),
    );
  }
}

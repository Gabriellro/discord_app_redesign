import 'package:flutter/material.dart';
import 'package:discord_app_redesign/src/shared/themes/theme.dart';

class ChannelTextWidget extends StatelessWidget {
  final String label;
  final int? countMensages;
  final bool isMensagesNotread;
  const ChannelTextWidget({
    Key? key,
    required this.label,
    this.countMensages,
    this.isMensagesNotread = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width - 98 - 48,
            height: 32,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: isMensagesNotread ? AppColors.escuro : Colors.transparent,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Icon(
                  Icons.forum_rounded,
                  color: AppColors.cinxo,
                ),
                const SizedBox(width: 10),
                Text(
                  label,
                  style: TextStyles.button.copyWith(
                    color: AppColors.totalmenteBranco,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                const Spacer(),
                Text(
                  "${countMensages == null ? "" : countMensages}",
                  style: TextStyles.button.copyWith(
                    color: AppColors.azoxo,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

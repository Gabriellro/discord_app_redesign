import 'package:flutter/material.dart';

import 'package:discord_app_redesign/src/shared/themes/theme.dart';
import 'package:discord_app_redesign/src/shared/widgets/_export_widgets.dart';

class Header extends StatelessWidget {
  final String title;
  final TextStyle style;
  final IconData icon;
  final bool isProfliePicWidget, isSearchButton, isHelpIcon;
  const Header({
    Key? key,
    required this.title,
    required this.style,
    this.isProfliePicWidget = false,
    this.isSearchButton = false,
    this.isHelpIcon = false,
    this.icon = Icons.help_rounded,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: SizedBox(
        height: 46,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              overflow: TextOverflow.ellipsis,
              style: style,
            ),
            const Spacer(),
            Visibility(
              visible: isSearchButton,
              child: const CircleAvatar(
                backgroundColor: AppColors.escuro,
                child: Icon(Icons.search_rounded, color: AppColors.cinxo),
              ),
            ),
            const SizedBox(width: 15),
            Visibility(
              visible: isProfliePicWidget,
              child: GestureDetector(
                onTap: () => Navigator.pushNamed(context, "/settings"),
                child: const ProfliePicWidget.medium(
                  pic: AppImages.gameZone,
                ),
              ),
            ),
            Visibility(
              visible: isHelpIcon,
              child: Icon(
                icon,
                color: AppColors.cinxo,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

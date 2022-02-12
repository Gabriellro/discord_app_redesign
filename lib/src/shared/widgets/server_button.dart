import 'package:flutter/material.dart';

import 'package:discord_app_redesign/src/modules/home/home_controller.dart';

import 'package:discord_app_redesign/src/shared/themes/theme.dart';

class ServerButton extends StatefulWidget {
  final int indexpage;
  final VoidCallback? ontap;
  final bool isActive;
  final String pic;
  const ServerButton({
    Key? key,
    required this.indexpage,
    required this.pic,
    this.ontap,
    this.isActive = false,
  }) : super(key: key);

  @override
  State<ServerButton> createState() => _ServerButtonState();
}

class _ServerButtonState extends State<ServerButton> {
  final controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.ontap,
      child: Row(
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeIn,
            width: 5,
            height: controller.currentPage == widget.indexpage ? 30 : 0,
            decoration: const BoxDecoration(
              color: AppColors.totalmenteBranco,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(100),
                bottomRight: Radius.circular(100),
              ),
            ),
          ),
          const SizedBox(width: 13),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 46,
                height: 46,
                decoration: BoxDecoration(
                  color: controller.currentPage == widget.indexpage
                      ? AppColors.azoxo
                      : AppColors.escuro,
                  borderRadius: BorderRadius.circular(
                    controller.currentPage == widget.indexpage ? 15 : 100,
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                    controller.currentPage == widget.indexpage ? 15 : 100,
                  ),
                  child: Image.asset(
                    widget.pic,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

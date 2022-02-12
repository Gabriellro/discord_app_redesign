import 'package:discord_app_redesign/src/shared/data/dummy_data.dart';
import 'package:flutter/material.dart';

import 'package:discord_app_redesign/src/shared/models/_export_models.dart';
import 'package:discord_app_redesign/src/shared/themes/theme.dart';
import 'package:discord_app_redesign/src/shared/widgets/_export_widgets.dart';

class ServerPage extends StatefulWidget {
  static String routeName = "/ServerPage";
  final ServerModel serverModel;
  const ServerPage({Key? key, required this.serverModel}) : super(key: key);

  @override
  State<ServerPage> createState() => _ServerPageState();
}

class _ServerPageState extends State<ServerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 20),
              child: Header(
                title: "${widget.serverModel.name}",
                style: TextStyles.headline6.copyWith(
                  color: AppColors.totalmenteBranco,
                ),
                icon: Icons.keyboard_arrow_down_rounded,
                isHelpIcon: true,
              ),
            ),
            const SizedBox(height: 25),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 16),
                  child: Column(
                    children: [
                      SetCategoryWidget(
                        categoryModel: playesrHouseCategorys.first,
                      ),
                      SetCategoryWidget(
                        categoryModel: playesrHouseCategorys.last,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

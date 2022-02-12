import 'package:discord_app_redesign/src/shared/themes/app_colors.dart';
import 'package:discord_app_redesign/src/shared/themes/app_svg.dart';
import 'package:discord_app_redesign/src/shared/themes/app_text_styles.dart';
import 'package:discord_app_redesign/src/shared/widgets/add_server_button.dart';
import 'package:discord_app_redesign/src/shared/widgets/header_widget.dart';
import 'package:flutter/material.dart';

class AddServerPage extends StatelessWidget {
  const AddServerPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Header(
                  title: "Create a server",
                  style: TextStyles.headline5.copyWith(
                    color: AppColors.totalmenteBranco,
                  ),
                  isHelpIcon: true,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 30),
                        SizedBox(
                          width: 246,
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Your server is where you and \n',
                                ),
                                TextSpan(
                                  text: 'your friends hang out.\n',
                                ),
                                TextSpan(
                                  text: 'Make yours and start talking.',
                                ),
                              ],
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: SizedBox(
                            child: AddServerButton(
                              iconSvg: AppSvg.createMyOwn,
                              label: 'Create My Own',
                            ),
                          ),
                        ),
                        Text(
                          'Start from a template',
                          style: TextStyles.subtitle1.copyWith(
                            color: AppColors.totalmenteBranco,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: SizedBox(
                            child: AddServerButton(
                              iconSvg: AppSvg.gaming,
                              label: 'Gaming',
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: SizedBox(
                            child: AddServerButton(
                              iconSvg: AppSvg.schoolClub,
                              label: 'School Club',
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: SizedBox(
                            child: AddServerButton(
                              iconSvg: AppSvg.studyGroup,
                              label: 'Study Group',
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: SizedBox(
                            child: AddServerButton(
                              iconSvg: AppSvg.friends,
                              label: 'Friends',
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: SizedBox(
                            child: AddServerButton(
                              iconSvg: AppSvg.artistsCreators,
                              label: 'Artists & Creators',
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: SizedBox(
                            child: AddServerButton(
                              iconSvg: AppSvg.localCommunity,
                              label: 'Local Community',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

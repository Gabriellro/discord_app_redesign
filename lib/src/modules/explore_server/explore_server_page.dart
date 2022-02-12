import 'package:flutter/material.dart';

import 'package:discord_app_redesign/src/shared/themes/theme.dart';
import 'package:discord_app_redesign/src/shared/widgets/_export_widgets.dart';

class ExploreServerPage extends StatelessWidget {
  static String routeName = "/ExploreServerScreen";
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
                padding: const EdgeInsets.only(
                  top: 40,
                ),
                child: Header(
                  title: "Discover",
                  style: TextStyles.headline5.copyWith(
                    color: AppColors.totalmenteBranco,
                  ),
                  isHelpIcon: true,
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 30),
                      Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width - 98 - 25,
                            height: 50,
                            child: MediaQuery.removePadding(
                              context: context,
                              removeTop: true,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                physics: BouncingScrollPhysics(),
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: ActionChip(
                                      avatar: Icon(
                                        Icons.exit_to_app,
                                        color: AppColors.totalmenteBranco,
                                      ),
                                      label: Text(
                                        "category",
                                        style: TextStyles.headline6.copyWith(
                                          color: AppColors.totalmenteBranco,
                                        ),
                                      ),
                                      backgroundColor: AppColors.azoxo,
                                      onPressed: () {},
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 30),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          // Container(
                          //   height: 120,
                          //   width: 246,
                          //   child: ClipRRect(
                          //     borderRadius: BorderRadius.circular(15),
                          //     child: SvgPicture.asset(
                          //       "assets/images/header_image.svg",
                          //       alignment: Alignment.topRight,
                          //       fit: BoxFit.fitHeight,
                          //     ),
                          //   ),
                          // ),
                          Container(
                            width: 246,
                            child: RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Find your community \n',
                                    style: TextStyles.subtitle1.copyWith(
                                      shadows: <Shadow>[
                                        Shadow(
                                          offset: Offset(1.0, 2.0),
                                          blurRadius: 6.0,
                                          color: Color.fromARGB(255, 0, 0, 0),
                                        ),
                                      ],
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'on Discord\n',
                                    style: TextStyles.subtitle1.copyWith(
                                      shadows: <Shadow>[
                                        Shadow(
                                          offset: Offset(1.0, 2.0),
                                          blurRadius: 6.0,
                                          color: Color.fromARGB(255, 0, 0, 0),
                                        ),
                                      ],
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        "From gaming, to music, to learning, there's a place\n",
                                    style: TextStyles.caption.copyWith(
                                      shadows: <Shadow>[
                                        Shadow(
                                          offset: Offset(1.0, 2.0),
                                          blurRadius: 6.0,
                                          color: Color.fromARGB(255, 0, 0, 0),
                                        ),
                                      ],
                                    ),
                                  ),
                                  TextSpan(
                                    text: " for you.",
                                    style: TextStyles.caption.copyWith(
                                      shadows: <Shadow>[
                                        Shadow(
                                          offset: Offset(1.0, 2.0),
                                          blurRadius: 6.0,
                                          color: Color.fromARGB(255, 0, 0, 0),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Container(
                        width: 246,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Featured communities',
                              style: TextStyles.bodyText1.copyWith(),
                            ),
                            Icon(
                              Icons.arrow_forward_rounded,
                              color: AppColors.totalmenteBranco,
                            )
                          ],
                        ),
                      ),
                      // Row(
                      //   crossAxisAlignment: CrossAxisAlignment.start,
                      //   children: [
                      //     Container(
                      //       width: 262,
                      //       height: 150,
                      //       child: Container(
                      //         child: ListView.builder(
                      //           scrollDirection: Axis.horizontal,
                      //           physics: BouncingScrollPhysics(),
                      //           itemCount: communitieslist.length,
                      //           itemBuilder: (context, index) =>
                      //               CommunitiesController(
                      //             communitiesModel: communitieslist[index],
                      //           ),
                      //         ),
                      //       ),
                      //     ),
                      //   ],
                      // ),
                      // Container(
                      //   width: 246,
                      //   child: Row(
                      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //     children: [
                      //       Text(
                      //         'Popular communities',
                      //         style: kStyleSubTitle.copyWith(
                      //           color: totalmente_branco,
                      //         ),
                      //       ),
                      //       Icon(
                      //         Icons.arrow_forward_rounded,
                      //         color: totalmente_branco,
                      //       )
                      //     ],
                      //   ),
                      // ),
                      // Row(
                      //   crossAxisAlignment: CrossAxisAlignment.start,
                      //   children: [
                      //     Container(
                      //       width: 262,
                      //       height: 150,
                      //       child: Container(
                      //         child: ListView.builder(
                      //           scrollDirection: Axis.horizontal,
                      //           physics: BouncingScrollPhysics(),
                      //           itemCount: communitieslist.length,
                      //           itemBuilder: (context, index) =>
                      //               CommunitiesController(
                      //             communitiesModel: communitieslist[index],
                      //           ),
                      //         ),
                      //       ),
                      //     ),
                      //   ],
                      // ),
                      // Container(
                      //   width: 246,
                      //   child: Column(
                      //     children: [
                      //       SvgPicture.asset(
                      //         "assets/icons/home.svg",
                      //         height: 50,
                      //       ),
                      //       SizedBox(height: 10),
                      //       Text(
                      //         "There are more communities out there!",
                      //         style: kStyleDate.copyWith(
                      //           color: totalmente_branco,
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

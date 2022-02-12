import 'package:discord_app_redesign/src/modules/_export_modules.dart';
import 'package:discord_app_redesign/src/shared/data/dummy_data.dart';
import 'package:flutter/material.dart';

import 'package:discord_app_redesign/src/modules/home/home_controller.dart';

import 'package:discord_app_redesign/src/shared/themes/theme.dart';
import 'package:discord_app_redesign/src/shared/widgets/_export_widgets.dart';

import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  static String routeName = "/";
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();
  List<int> svrList = [3, 4];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 78),
            child: IndexedStack(
              index: controller.currentPage,
              children: [
                DirectPage(),
                AddServerPage(),
                ExploreServerPage(),
                ServerPage(
                  serverModel: playesrHouse,
                ),
                ServerPage(
                  serverModel: playesrHouse2,
                ),
              ],
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: 98,
                height: double.infinity,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      top: 72,
                      child: SvgPicture.asset(
                        AppSvg.bgHome,
                        color: Theme.of(context).cardColor,
                      ),
                    ),
                    Positioned(
                      top: 16,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              controller.setPage(0);
                              setState(() {});
                            },
                            child: Row(
                              children: [
                                AnimatedContainer(
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.easeIn,
                                  width: 5,
                                  height: controller.currentPage == 0 ? 30 : 0,
                                  decoration: BoxDecoration(
                                    color:
                                        Theme.of(context).colorScheme.onPrimary,
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
                                        color: controller.currentPage == 0
                                            ? AppColors.azoxo
                                            : Theme.of(context).cardColor,
                                        borderRadius: BorderRadius.circular(
                                          controller.currentPage == 0
                                              ? 15
                                              : 100,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 30,
                                      child: SvgPicture.asset(
                                        AppSvg.iconClyde,
                                        color: controller.currentPage == 0
                                            ? AppColors.totalmenteBranco
                                            : AppColors.totalmenteBranco,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            width: 64,
                            height: MediaQuery.of(context).size.height - 260,
                            child: MediaQuery.removePadding(
                              context: context,
                              removeTop: true,
                              child: ListView.builder(
                                itemCount: svrList.length,
                                physics: BouncingScrollPhysics(),
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(bottom: 8),
                                    child: ServerButton(
                                      indexpage: svrList[index],
                                      ontap: () {
                                        setState(() {
                                          controller.setPage(svrList[index]);
                                        });
                                      },
                                      pic: AppImages.gameZone,
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          GestureDetector(
                            onTap: () {
                              controller.setPage(1);
                              setState(() {});
                            },
                            child: Row(
                              children: [
                                AnimatedContainer(
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.easeIn,
                                  width: 5,
                                  height: controller.currentPage == 1 ? 30 : 0,
                                  decoration: BoxDecoration(
                                    color:
                                        Theme.of(context).colorScheme.onPrimary,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(0),
                                      topRight: Radius.circular(100),
                                      bottomLeft: Radius.circular(0),
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
                                        color: controller.currentPage == 1
                                            ? AppColors.online
                                            : Theme.of(context).backgroundColor,
                                        borderRadius: BorderRadius.circular(
                                          controller.currentPage == 1
                                              ? 15
                                              : 100,
                                        ),
                                      ),
                                      child: Icon(
                                        Icons.add_rounded,
                                        size: 36,
                                        color: controller.currentPage == 1
                                            ? AppColors.totalmenteBranco
                                            : AppColors.online,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10),
                          GestureDetector(
                            onTap: () {
                              controller.setPage(2);
                              setState(() {});
                            },
                            child: Row(
                              children: [
                                AnimatedContainer(
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.easeIn,
                                  width: 5,
                                  height: controller.currentPage == 2 ? 30 : 0,
                                  decoration: BoxDecoration(
                                    color:
                                        Theme.of(context).colorScheme.onPrimary,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(0),
                                      topRight: Radius.circular(100),
                                      bottomLeft: Radius.circular(0),
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
                                        color: controller.currentPage == 2
                                            ? AppColors.online
                                            : Theme.of(context).backgroundColor,
                                        borderRadius: BorderRadius.circular(
                                          controller.currentPage == 2
                                              ? 15
                                              : 100,
                                        ),
                                      ),
                                      child: Icon(
                                        Icons.explore_rounded,
                                        size: 36,
                                        color: controller.currentPage == 2
                                            ? AppColors.totalmenteBranco
                                            : AppColors.online,
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
                  ],
                ),
              ),
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor:
            controller.currentPage == 0 ? AppColors.azoxo : AppColors.escuro,
        child: Icon(
          controller.currentPage == 0
              ? Icons.person_search_rounded
              : controller.currentPage == 1 || controller.currentPage == 2
                  ? Icons.mic_rounded
                  : Icons.mic_rounded,
          color: AppColors.totalmenteBranco,
          size: 36,
        ),
        onPressed: () {},
      ),
    );
  }
}

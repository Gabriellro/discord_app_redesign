import 'dart:math' as math;

import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

import 'package:discord_app_redesign/src/shared/models/category_model.dart';
import 'package:discord_app_redesign/src/shared/themes/theme.dart';
import 'package:discord_app_redesign/src/shared/widgets/_export_widgets.dart';

class SetCategoryWidget extends StatelessWidget {
  final CategoryModel categoryModel;

  const SetCategoryWidget({
    Key? key,
    required this.categoryModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isMessageNotRead = true;
    final ischannelTextWidget = true;
    final ischannelVoiceWidget = true;
    return SizedBox(
      child: Column(
        children: [
          ExpandableNotifier(
            child: Column(
              children: [
                ScrollOnExpand(
                  child: ExpandablePanel(
                    theme: ExpandableThemeData(
                      iconColor: AppColors.azoxo,
                      useInkWell: false,
                      tapHeaderToExpand: true,
                      hasIcon: false,
                    ),
                    header: Row(
                      children: [
                        ExpandableIcon(
                          theme: const ExpandableThemeData(
                            collapseIcon: Icons.keyboard_arrow_down_rounded,
                            expandIcon: Icons.keyboard_arrow_right_rounded,
                            iconRotationAngle: math.pi / 2,
                            iconColor: AppColors.azoxo,
                            hasIcon: false,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          categoryModel.name,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyles.headline6
                              .copyWith(color: AppColors.cinxo),
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.add_rounded,
                          color: AppColors.azoxo,
                        ),
                      ],
                    ),
                    collapsed: Column(
                      children: [
                        isMessageNotRead
                            ? ChannelTextWidget(
                                label:
                                    "${categoryModel.channelTextModel?.first.name}",
                                isMensagesNotread: true,
                                countMensages: 10,
                              )
                            : SizedBox(),
                      ],
                    ),
                    expanded: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ischannelTextWidget
                            ? ChannelTextWidget(
                                label:
                                    "${categoryModel.channelTextModel?.first.name}",
                                isMensagesNotread: true,
                                countMensages: 10,
                              )
                            : SizedBox.shrink(),
                        ischannelVoiceWidget
                            ? ChannelVoiceWidget(
                                label:
                                    "${categoryModel.channelVoiceModel?.first.name}",
                              )
                            : SizedBox.shrink(),
                      ],
                    ),
                    builder: (_, collapsed, expanded) {
                      return Padding(
                        padding: EdgeInsets.only(
                          left: 10,
                          right: 10,
                          bottom: 10,
                        ),
                        child: Expandable(
                          collapsed: collapsed,
                          expanded: expanded,
                          theme: const ExpandableThemeData(crossFadePoint: 0),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

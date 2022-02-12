import 'package:discord_app_redesign/src/shared/models/_export_models.dart';
import 'package:discord_app_redesign/src/shared/themes/theme.dart';

final UserModel currentUser = UserModel(
  name: '<Glurdo/>',
  imageUrl:
      'https://uploads.spiritfanfiction.com/fanfics/historias/202102/dark-space-captains-life-21783050-270220211744.jpg',
  status: AppColors.online,
);

final List<UserModel> users = [
  //0
  UserModel(
    name: 'Akarddo',
    imageUrl:
        'https://i.scdn.co/image/ab6761610000e5eb09bf4814c6585e1f69dfeef7',
    status: AppColors.ofline,
  ),
  //1
  UserModel(
    name: 'JujubaAzul',
    imageUrl: AppImages.jujubaAzulPic,
    status: AppColors.online,
  ),
];

final AddServerButtonModel createMyOwn = AddServerButtonModel(
  iconSvg: AppSvg.createMyOwn,
  label: 'Create My Own',
);

final List<AddServerButtonModel> tampletes = [
  AddServerButtonModel(
    iconSvg: AppSvg.gaming,
    label: 'Gaming',
  ),
  AddServerButtonModel(
    iconSvg: AppSvg.schoolClub,
    label: 'School Club',
  ),
  AddServerButtonModel(
    iconSvg: AppSvg.studyGroup,
    label: 'Study Group',
  ),
  AddServerButtonModel(
    iconSvg: AppSvg.friends,
    label: 'Friends',
  ),
  AddServerButtonModel(
    iconSvg: AppSvg.artistsCreators,
    label: 'Artists & Creators',
  ),
  AddServerButtonModel(
    iconSvg: AppSvg.localCommunity,
    label: 'Local Community',
  ),
];

final ServerModel playesrHouse = ServerModel(
  name: "Player's house 🎮",
  imageUrl:
      'https://uploads.spiritfanfiction.com/fanfics/historias/202102/dark-space-captains-life-21783050-270220211744.jpg',
  categorys: playesrHouseCategorys,
);

final List<CategoryModel> playesrHouseCategorys = [
  CategoryModel(name: 'Lobby', channelTextModel: playesrHouseChannelTexts),
  CategoryModel(name: 'Comandos-Bot'),
];

final List<ChannelTextModel> playesrHouseChannelTexts = [
  ChannelTextModel(name: 'Lobby'),
  ChannelTextModel(name: 'Comandos-Bot'),
];

final ServerModel playesrHouse2 = ServerModel(
  name: "Player's house2 🎮",
  imageUrl:
      'https://uploads.spiritfanfiction.com/fanfics/historias/202102/dark-space-captains-life-21783050-270220211744.jpg',
);

class CategoryModel {
  final String name;
  List<ChannelTextModel>? channelTextModel;
  List<ChannelVoiceModel>? channelVoiceModel;

  CategoryModel({
    required this.name,
    this.channelTextModel,
    this.channelVoiceModel,
  });
}

class ChannelTextModel {
  final String name;

  const ChannelTextModel({
    required this.name,
  });
}

class ChannelVoiceModel {
  final String name;

  const ChannelVoiceModel({
    required this.name,
  });
}

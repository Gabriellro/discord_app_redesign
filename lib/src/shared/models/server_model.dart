import '_export_models.dart';

class ServerModel {
  final String name;
  final String imageUrl;
  final List<CategoryModel>? categorys;

  const ServerModel({
    required this.name,
    required this.imageUrl,
    this.categorys,
  });
}

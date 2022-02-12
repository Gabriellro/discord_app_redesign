import 'package:flutter/material.dart';

import '../../modules/_export_modules.dart';
import '../data/dummy_data.dart';

final Map<String, WidgetBuilder> routes = {
  HomePage.routeName: (context) => const HomePage(),
  ServerPage.routeName: (context) => ServerPage(serverModel: playesrHouse),
};

import 'package:discord_app_redesign/src/shared/utils/app_routes.dart';
import 'package:flutter/material.dart';

import 'shared/themes/theme.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light(),
      darkTheme: AppTheme.dark(),
      themeMode: ThemeMode.system,
      routes: routes,
    );
  }
}

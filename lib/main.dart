import 'package:architecture_template_v2/product/init/application_initialize.dart';
import 'package:architecture_template_v2/product/init/product_localization.dart';
import 'package:architecture_template_v2/product/init/theme/index.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'package:architecture_template_v2/feature/home/view/home_view.dart';

void main() async {
  await ApplicationInitialize().make();
  runApp(ProductLocalization(child: const _MyApp()));
}

class _MyApp extends StatelessWidget {
  const _MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: CustomLightTheme().themeData,
      darkTheme: CustomDarkTheme().themeData,
      themeMode: ThemeMode.light,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'Material App',
      home: const HomeView(),
    );
  }
}

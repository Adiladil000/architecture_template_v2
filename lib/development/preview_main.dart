import 'package:architecture_template_v2/product/init/application_initialize.dart';
import 'package:architecture_template_v2/product/init/product_localization.dart';
import 'package:architecture_template_v2/product/init/theme/index.dart';
import 'package:architecture_template_v2/product/navigation/app_router.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:widgets/widgets.dart';
import 'package:device_preview/device_preview.dart';

void main() async {
  await ApplicationInitialize().make();
  runApp(
    DevicePreview(
      builder: (context) => ProductLocalization(child: const _MyApp()),
    ),
  );
}

final class _MyApp extends StatelessWidget {
  const _MyApp();
  static final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
      theme: CustomLightTheme().themeData,
      darkTheme: CustomDarkTheme().themeData,
      themeMode: ThemeMode.light,
      builder: CustomResponsive.build,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
    );
  }
}

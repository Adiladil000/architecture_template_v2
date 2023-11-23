import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:logger/logger.dart';

@immutable

/// this is class used to initialize the application process
final class ApplicationInitialize {
  /// it's only use for business
  const ApplicationInitialize.setup();

  /// This method is used to initialize the application process
  Future<void> initialize() async {
    WidgetsFlutterBinding.ensureInitialized();
    await EasyLocalization.ensureInitialized();
    EasyLocalization.logger.enableLevels = [LevelMessages.error];
    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    FlutterError.onError = (details) {
      /// crashlytics log insert here
      /// custom service  or custom logger insert here
      /// Todo: and custom logger
      Logger().e(details.exceptionAsString());
    };
  }
}

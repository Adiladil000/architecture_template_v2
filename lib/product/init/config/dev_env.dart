import 'package:architecture_template_v2/product/init/config/app_configuration.dart';
import 'package:envied/envied.dart';

part 'dev_env.g.dart';

@Envied(
  obfuscate: true,
  path: 'asset/env/.dev.env',
)
final class DevEnv implements AppConfiguration {
  @EnviedField(varName: 'BASE_URL')
  static final String _baseUrl = DevEnv._baseUrl;

  @EnviedField(varName: 'API_KEY')
  static final String _apiKey = DevEnv._apiKey;

  @override
  String get apiKey => _apiKey;

  @override
  // TODO: implement baseUrl
  String get baseUrl => _baseUrl;
}

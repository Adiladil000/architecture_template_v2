import 'package:architecture_template_v2/product/service/manager/index.dart';
import 'package:get_it/get_it.dart';

/// Product container for dependency injection
class ProductContainer {
  ProductContainer._();

  static final _getIt = GetIt.I;

  /// Product core required items
  static void setup() {
    _getIt.registerSingleton<ProductNetworkManager>(ProductNetworkManager.base());
  }

  /// read your dependency item for [ProductContainer]
  static T read<T extends Object>() => _getIt<T>();
}

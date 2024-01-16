import 'package:architecture_template_v2/product/init/index.dart';
import 'package:architecture_template_v2/product/service/manager/index.dart';
import 'package:architecture_template_v2/product/state/view_model/product_view_model.dart';
import 'package:core/core.dart';
import 'package:get_it/get_it.dart';

/// Product container for dependency injection
class ProductContainer {
  ProductContainer._();

  static final _getIt = GetIt.I;

  /// Product core required items
  static void setup() {
    _getIt
      ..registerSingleton(ProductCache(cacheManager: HiveCacheManager()))
      ..registerSingleton<ProductNetworkManager>(ProductNetworkManager.base())
      ..registerLazySingleton<ProductViewModel>(ProductViewModel.new);
  }

  /// read your dependency item for [ProductContainer]
  static T read<T extends Object>() => _getIt<T>();
}

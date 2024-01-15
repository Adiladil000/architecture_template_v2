import 'package:core/core.dart';

class ProductCache {
  ProductCache({required CacheManager cacheManager}) : _cacheManager = cacheManager;

  final CacheManager _cacheManager;

  Future<void> init() async {
    await _cacheManager.init(items: []);
  }
}

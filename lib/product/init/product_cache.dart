import 'package:architecture_template_v2/product/cache/model/user_cache_model.dart';
import 'package:core/core.dart';

class ProductCache {
  ProductCache({required CacheManager cacheManager}) : _cacheManager = cacheManager;

  final CacheManager _cacheManager;

  Future<void> init() async {
    await _cacheManager.init(
      items: [
        UserCacheModel.empty(),
      ],
    );
  }

  late final HiveCacheOperation<UserCacheModel> userCacheOperation = HiveCacheOperation<UserCacheModel>();
}

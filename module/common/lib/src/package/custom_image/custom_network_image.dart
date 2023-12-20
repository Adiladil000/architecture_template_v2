import 'package:cached_network_image/cached_network_image.dart';
import 'package:common/src/package/custom_image/custom_mem_cache.dart';
import 'package:flutter/material.dart';

/// It will provide to image caching and image loading from network
class CustomImageNetwork extends StatelessWidget {
  /// The line `const CustomNetworkImage({super.key});` is defining
  /// a constructor for the `CustomNetworkImage` class.
  const CustomImageNetwork({
    super.key,
    this.imageUrl,
    this.emptyWidget,
    this.memCache = const CustomMemCache(height: 200, width: 200),
    this.boxFit = BoxFit.cover,
  });

  ///  Image source address
  final String? imageUrl;

  /// When image is not available then it will show empty widget
  final Widget? emptyWidget;

  /// Default value is [CustomMemCache(height: 200, width: 200)]
  final CustomMemCache memCache;

  /// Default value is [BoxFit.cover]
  final BoxFit boxFit;

  @override
  Widget build(BuildContext context) {
    final url = imageUrl;
    if (url == null || url.isEmpty) return emptyWidget ?? const SizedBox();
    return CachedNetworkImage(
      imageUrl: url,
      fit: boxFit,
      memCacheHeight: memCache.height,
      memCacheWidth: memCache.width,
      errorWidget: (context, url, error) {
        return emptyWidget ?? const SizedBox();
      },
      progressIndicatorBuilder: (context, url, progress) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';

/// Manage your network error with screen
final class ProductNetworkErrorManager {
  ProductNetworkErrorManager(this.context);

  final BuildContext context;

  void handleError(int value) {
    if (value == 401) {
      // context.router.push(const HomeRoute());
    }
  }
}

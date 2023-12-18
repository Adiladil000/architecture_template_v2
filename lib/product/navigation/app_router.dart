import 'package:architecture_template_v2/feature/home/view/home_detail_view.dart';
import 'package:architecture_template_v2/feature/home/view/home_view.dart';
import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View,Route')

/// Project router information class
final class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, initial: true),
        AutoRoute(page: HomeDetailRoute.page),
      ];
}

import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View , Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        /// routes go here
      ];
}

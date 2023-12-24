import 'package:architecture_template_v2/feature/home/view/mixin/home_view_mixin.dart';
import 'package:architecture_template_v2/product/init/config/app_environment.dart';
import 'package:architecture_template_v2/product/navigation/app_router.dart';
import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'package:architecture_template_v2/product/init/language/locale_keys.g.dart';
import 'package:gen/gen.dart';
import 'package:kartal/kartal.dart';

import 'package:architecture_template_v2/product/widget/project_network_image.dart';

part 'widget/home_app_bar.dart';

@RoutePage()
final class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with HomeViewMixin {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const _HomeAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Assets.icons.icLove.svg(package: 'gen'),

          Text(''.ext.version),
          Text(
            'veli',
            style: context.general.textTheme.titleLarge?.copyWith(
              color: 'FFF0001'.ext.color,
            ),
          ),
          SizedBox(
            height: context.sized.dynamicHeight(0.4),
          ),
          // Future<String>().ext.toBuild(
          //       onSuccess: onSuccess,
          //       loadingWidget: loadingWidget,
          //       notFoundWidget: notFoundWidget,
          //       onError: onError,
          //     ),
          FloatingActionButton(
            onPressed: () {
              // 'Kartal'.ext.launchMaps();
              // CustomLinkPreview.getLinkPreviewData('www.google.com');
              // CustomLogger.showError('object');

              final dummyUsers = List<User?>.generate(
                10,
                (index) => User(name: 'User $index', money: index * 100),
              );
              final items = dummyUsers
                  .where((element) {
                    if (element?.money == null) return false;
                    return element!.money! > 500;
                  })
                  .exts
                  .makeSafeCustom(
                    (value) => value?.name.ext.isNotNullOrNoEmpty ?? false,
                  );
            },
            child: const Text('En'),
          ),

          const ProjectNetworkImage(
            url: '',
          ),
          Expanded(child: Assets.lottie.animZombie.lottie(package: 'gen')),
          Assets.images.imgFlags.image(package: 'gen'),
          ElevatedButton(
            onPressed: () async {
              final response = await context.router.push<bool?>(
                HomeDetailRoute(id: '1'),
              );
            },
            child: Text(AppEnvironmentItems.baseUrl.value),
          ),
          const Text('Change Language'),
          ElevatedButton(
            onPressed: () {
              //ProductLocalization.updateLanguage(context: context, value: Locales.tr);
            },
            child: Text(
              style: context.general.textTheme.bodySmall,
              LocaleKeys.general_button_save,
            ).tr(args: ['Adil']),
          ),
        ],
      ),
    );
  }

  void calculate(List<String> items) {}
}

class User {
  User({required this.name, required this.money});

  final String? name;
  final double? money;
}

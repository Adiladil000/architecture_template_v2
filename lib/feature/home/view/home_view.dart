import 'package:architecture_template_v2/feature/home/view/mixin/home_view_mixin.dart';
import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:kartal/kartal.dart';

import 'package:widgets/widgets.dart';

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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          SuccessDialog.show(title: 'title', context: context);
        },
      ),
      appBar: const _HomeAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Assets.icons.icLove.svg(package: 'gen'),

          AdaptAllView(
            phone: Text(
              ''.ext.version,
              style: context.general.textTheme.titleLarge,
            ),
            tablet: Text(
              ''.ext.version,
              style: context.general.textTheme.bodyLarge,
            ),
            desktop: Text(
              ''.ext.version,
              style: context.general.textTheme.headlineLarge,
            ),
          ),
          Text(
            'veli',
            style: context.general.textTheme.titleLarge?.copyWith(
              color: 'FFF0001'.ext.color,
            ),
          ),

          Expanded(
            child: Image.network(
              'https://picsum.photos/500/500',
            ),
          ),
          const Expanded(child: Placeholder()),
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

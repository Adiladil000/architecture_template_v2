import 'package:architecture_template_v2/feature/home/view/mixin/home_view_mixin.dart';
import 'package:architecture_template_v2/product/init/product_localization.dart';
import 'package:architecture_template_v2/product/utility/constants/enums/locales.dart';
import 'package:flutter/material.dart';

part 'widget/home_app_bar.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with HomeViewMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const _HomeAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Change Language'),
          ElevatedButton(
            onPressed: () {
              ProductLocalization.updateLanguage(context: context, value: Locales.tr);
            },
            child: const Text('English'),
          ),
        ],
      ),
    );
  }
}

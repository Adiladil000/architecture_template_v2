import 'package:architecture_template_v2/feature/home/view/mixin/home_view_mixin.dart';
import 'package:architecture_template_v2/feature/home/view_model/home_view_model.dart';
import 'package:architecture_template_v2/feature/home/view_model/state/home_state.dart';
import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gen/gen.dart';

part 'widget/home_app_bar.dart';

@RoutePage()
final class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with HomeViewMixin {
  final HomeViewModel _homeViewModel;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeViewModel(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            _homeViewModel.changeLoading();
          },
        ),
        appBar: const _HomeAppBar(),
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: _UserList(),
            ),
          ],
        ),
      ),
    );
  }
}

class _UserList extends StatelessWidget {
  const _UserList();

  @override
  Widget build(BuildContext context) {
    return BlocSelector<HomeViewModel, HomeState, List<User>>(
      selector: (state) {
        return state.users ?? [];
      },
      builder: (context, state) {
        if (state.isEmpty) return const SizedBox.shrink();
        return ListView.builder(
          itemCount: state.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(
                state[index].userId.toString(),
              ),
              subtitle: Text(state[index].body.toString()),
            );
          },
        );
      },
    );
  }
}

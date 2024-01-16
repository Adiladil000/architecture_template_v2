import 'package:architecture_template_v2/feature/home/view_model/state/home_state.dart';
import 'package:architecture_template_v2/product/cache/model/user_cache_model.dart';
import 'package:architecture_template_v2/product/service/interface/authentication_operation.dart';
import 'package:architecture_template_v2/product/state/base/base_cubit.dart';
import 'package:architecture_template_v2/product/state/container/index.dart';
import 'package:gen/gen.dart';

/// Manage your home view business logic
final class HomeViewModel extends BaseCubit<HomeState> {
  /// [AuthenticationOperation] service
  HomeViewModel({required AuthenticationOperation operationService})
      : _authenticationOperationService = operationService,
        super(const HomeState(isLoading: false));

  final AuthenticationOperation _authenticationOperationService;

  /// Change loading state
  void changeLoading() {
    emit(state.copyWith(isLoading: !state.isLoading));
  }

  /// Get Users
  Future<void> fetchUsers() async {
    print(_users);
    final response = await _authenticationOperationService.users();
    _saveItems(response);
    emit(state.copyWith(users: response));
  }

  void _saveItems(List<User> user) {
    for (final element in user) {
      ProductStateItems.productCache.userCacheOperation.add(UserCacheModel(user: element));
    }
  }

  List<User> get _users => ProductStateItems.productCache.userCacheOperation
      .getAll()
      .map(
        (e) => e.user,
      )
      .toList();
}

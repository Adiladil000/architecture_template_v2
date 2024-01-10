import 'package:architecture_template_v2/product/service/manager/index.dart';
import 'package:gen/gen.dart';
import 'package:vexana/vexana.dart';

final class LoginService {
  // ignore: public_member_api_docs
  LoginService(INetworkManager<EmptyModel> networkManager) : _networkManager = networkManager;

  final INetworkManager<EmptyModel> _networkManager;

  Future<List<User>> users() async {
    final response = await _networkManager.send<User, List<User>>(
      ProductServicePath.posts.value,
      parseModel: User(),
      method: RequestType.GET,
    );

    return response.data ?? [];
  }
}

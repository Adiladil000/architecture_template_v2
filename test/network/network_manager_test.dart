import 'package:architecture_template_v2/product/service/manager/product_service_manager.dart';
import 'package:architecture_template_v2/product/service/manager/product_service_path.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final manager = ProductNetworkManager.base();

  setUp(() {});

  test('get users items from api', () {
    manager.send(ProductServicePath.userV1.value, parseModel: parseModel, method: method);
  });
}

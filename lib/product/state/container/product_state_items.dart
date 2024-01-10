import 'package:architecture_template_v2/product/service/manager/product_service_manager.dart';
import 'package:architecture_template_v2/product/state/container/product_state_container.dart';

final class ProductStateItems {
  ProductStateItems._();

  static ProductNetworkManager get productNetworkManager => ProductContainer.read<ProductNetworkManager>();
}

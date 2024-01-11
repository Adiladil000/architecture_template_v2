import 'package:architecture_template_v2/product/service/manager/product_service_manager.dart';
import 'package:architecture_template_v2/product/state/container/index.dart';
import 'package:architecture_template_v2/product/state/view_model/product_view_model.dart';
import 'package:flutter/material.dart';

abstract class BaseState<T extends StatefulWidget> extends State<T> {
  ProductNetworkManager get productNetworkManager => ProductStateItems.productNetworkManager;

  ProductViewModel get productViewModel => ProductStateItems.productViewModel;
}

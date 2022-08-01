import '../../view/pages/cart/cart_controller.dart';

import '../../viewModel/cart/cart_view_model.dart';

import 'package:get/get.dart';

class CartBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<CartController>(
      CartController(
        cartViewModel: Get.find<CartViewModel>(),
      ),
    );
  }
}

import '../../model/repositories/cart_repository.dart';
import '../../view/pages/home/home_controller.dart';

import '../../model/repositories/products_repository.dart';
import '../../viewModel/cart/cart_view_model.dart';
import '../../viewModel/product/product_view_model.dart';
import 'package:get/get.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    // Cart
    Get.lazyPut<CartRepositoryMock>(
      () => CartRepositoryMock(),
    );
    Get.put<CartViewModel>(
      CartViewModel(
        cartRepository: Get.find(),
      ),
    );

    // Home
    Get.lazyPut<ProductRepositoryMock>(
      () => ProductRepositoryMock(),
    );
    Get.lazyPut<ProductViewModel>(
      () => ProductViewModel(
        productRepository: Get.find<ProductRepositoryMock>(),
      ),
    );
    Get.put<HomeController>(
      HomeController(
        productViewModel: Get.find<ProductViewModel>(),
      ),
    );
  }
}

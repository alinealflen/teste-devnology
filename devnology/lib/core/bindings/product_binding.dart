import '../../model/repositories/products_repository.dart';

import '../../view/pages/product/product_controller.dart';

import '../../viewModel/product/product_view_model.dart';
import 'package:get/get.dart';

class ProductBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProductRepositoryMock>(
      () => ProductRepositoryMock(),
    );
    Get.lazyPut<ProductViewModel>(
      () => ProductViewModel(
        productRepository: Get.find<ProductRepositoryMock>(),
      ),
    );
    Get.put<ProductController>(
      ProductController(
        productViewModel: Get.find<ProductViewModel>(),
        productId: Get.arguments['productId'],
      ),
    );
  }
}

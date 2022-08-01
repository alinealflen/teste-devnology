import '../../../model/entities/product_entity.dart';
import '../../../viewModel/cart/cart_view_model.dart';
import '../../../viewModel/product/product_view_model.dart';
import 'package:get/get.dart';

class ProductController extends GetxController with StateMixin<Product> {
  final ProductViewModel _productViewModel;
  final CartViewModel _cartViewModel;
  final int productId;

  ProductController({
    required ProductViewModel productViewModel,
    required CartViewModel cartViewModel,
    required this.productId,
  })  : _productViewModel = productViewModel,
        _cartViewModel = cartViewModel {
    _getProduct(productId);
  }

  Future<void> _getProduct(int id) async {
    try {
      change(
        await _productViewModel.getProduct(id),
        status: RxStatus.success(),
      );
    } catch (e) {
      change(null, status: RxStatus.error());
    }
  }

  void addToCart(Product product) {
    _cartViewModel.addToCart(product);
    Get.toNamed('/cart');
  }
}

import '../../model/repositories/cart_repository.dart';
import 'package:get/get.dart';

import '../../model/entities/product_entity.dart';

class CartViewModel {
  final CartRepositoryMock _cartRepository;

  final RxList<Product> selectedProducts = <Product>[].obs;

  CartViewModel({
    required CartRepositoryMock cartRepository,
  }) : _cartRepository = cartRepository {
    _getSelectedProducts();
  }

  Future<void> _getSelectedProducts() async {
    selectedProducts.value = await _cartRepository.getSelectedProducts();
  }

  void addToCart(Product product) {
    selectedProducts.add(product);
  }

  void removeFromCart(Product product) {
    final int index = selectedProducts.indexOf(
        selectedProducts.firstWhere((element) => element.id == product.id));
    selectedProducts.removeAt(index);
  }
}

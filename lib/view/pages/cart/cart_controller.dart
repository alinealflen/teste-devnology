import '../../../viewModel/cart/cart_view_model.dart';

import '../../../model/entities/product_entity.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  final CartViewModel _cartViewModel;

  final RxDouble totalPrice = 0.0.obs;

  CartController({
    required CartViewModel cartViewModel,
  }) : _cartViewModel = cartViewModel {
    _cartViewModel.selectedProducts.listen((products) {
      sumTotalPrice(products);
    });
  }

  @override
  void onInit() {
    sumTotalPrice(selectedProducts);
    super.onInit();
  }

  List<Product> get selectedProducts => _cartViewModel.selectedProducts;

  int productQuantity(Product product) => selectedProducts
      .where((element) => element.id == product.id)
      .toList()
      .length;

  void addToCart(Product product) => _cartViewModel.addToCart(product);

  void removeFromCart(Product product) =>
      _cartViewModel.removeFromCart(product);

  void sumTotalPrice(List<Product> products) {
    totalPrice.value = 0;
    for (var product in products) {
      totalPrice.value += product.price;
    }
  }
}

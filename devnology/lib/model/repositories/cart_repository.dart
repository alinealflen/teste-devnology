import '../entities/product_entity.dart';
import '../serializers/product_serializer.dart';

class CartRepositoryMock {
  Future<List<Product>> getSelectedProducts() async {
    return Future.delayed(
      const Duration(seconds: 2),
      () => [
        ProductSerializer().fake(),
        ProductSerializer().fake(),
      ],
    );
  }
}

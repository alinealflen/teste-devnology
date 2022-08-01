import '../entities/product_entity.dart';
import '../serializers/product_serializer.dart';

class ProductRepositoryMock {
  Future<List<Product>> getProducts() async {
    return Future.delayed(
      const Duration(seconds: 2),
      () => [
        ProductSerializer().fake(),
        ProductSerializer().fake(),
        ProductSerializer().fake(),
      ],
    );
  }

  Future<Product> getProduct(int id) async {
    return Future.delayed(
      const Duration(seconds: 2),
      () => ProductSerializer().fake(),
    );
  }
}

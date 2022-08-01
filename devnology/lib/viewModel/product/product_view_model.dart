import '../../model/repositories/products_repository.dart';

import '../../model/entities/product_entity.dart';

class ProductViewModel {
  final ProductRepositoryMock _productRepository;

  ProductViewModel({
    required ProductRepositoryMock productRepository,
  }) : _productRepository = productRepository;

  Future<List<Product>> getProducts() async {
    return await _productRepository.getProducts();
  }

  Future<Product> getProduct(int id) async {
    return await _productRepository.getProduct(id);
  }
}

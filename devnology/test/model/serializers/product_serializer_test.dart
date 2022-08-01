import 'package:devnology/model/entities/product_entity.dart';
import 'package:devnology/model/serializers/product_serializer.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('productSerializer', () {
    test('should create a product from json', () {
      Product product = ProductSerializer().fake();

      final json = {
        'id': product.id,
        'description': product.description,
        'images': product.images,
        'price': product.price,
        'short_title': product.shortTitle,
        'title': product.title,
      };

      expect(ProductSerializer().from(json), product);
    });

    test('should create a json from a product', () {
      Product product = ProductSerializer().fake();

      final json = {
        'id': product.id,
        'description': product.description,
        'images': product.images,
        'price': product.price,
        'short_title': product.shortTitle,
        'title': product.title,
      };

      expect(ProductSerializer().to(product), json);
    });

    test('should create a fake product', () {
      Product product = ProductSerializer().fake();

      expect(product.id, isNotNull);

      Product anotherProduct = ProductSerializer().fake();

      expect(product, isNot(equals(anotherProduct)));
    });
  });
}

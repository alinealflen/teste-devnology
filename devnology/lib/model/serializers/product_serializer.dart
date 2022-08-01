import '../entities/product_entity.dart';
import 'serializer.dart';
import 'package:faker/faker.dart';

class ProductSerializer implements Serializer<Product, Map<String, dynamic>> {
  @override
  Product from(Map<String, dynamic> json) {
    return Product(
      id: json['id'] as int,
      description: json['description'],
      images: json['images'],
      price: json['price'],
      shortTitle: json['short_title'],
      title: json['title'],
    );
  }

  @override
  Map<String, dynamic> to(Product product) {
    return {
      'id': product.id,
      'description': product.description,
      'images': product.images,
      'price': product.price,
      'short_title': product.shortTitle,
      'title': product.title,
    };
  }

  @override
  Product fake() => Product(
        id: faker.randomGenerator.integer(999),
        description: faker.lorem.sentence(),
        images: [
          'lib/core/assets/images/3000222362_PRD_1500_11.png',
          'lib/core/assets/images/3192783133_1SZ1.png',
          'lib/core/assets/images/ideapad-flex-i5-hero-subseries-br1.png',
        ],
        price: faker.randomGenerator.integer(999).ceilToDouble(),
        shortTitle: faker.lorem.word(),
        title: faker.lorem.sentence(),
      );
}

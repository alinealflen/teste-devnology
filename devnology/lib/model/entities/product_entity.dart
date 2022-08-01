import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final int id;
  final String title;
  final String shortTitle;
  final double price;
  final String description;
  final List<String> images;

  const Product({
    required this.id,
    required this.title,
    required this.shortTitle,
    required this.price,
    required this.description,
    required this.images,
  });

  @override
  List<Object?> get props => [
        id,
        title,
        shortTitle,
        price,
        description,
        images,
      ];
}

import '../../../viewModel/product/product_view_model.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final ProductViewModel _productViewModel;

  HomeController({
    required ProductViewModel productViewModel,
  }) : _productViewModel = productViewModel;

  void getProducts() {}
}

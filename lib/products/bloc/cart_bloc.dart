import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_shop/products/domain/product_model.dart';
import 'package:get_shop/products/infrastructure/cart_repository.dart';

class CartBloc extends Cubit<List<ProductModel>> {
  final CartRepository productRepository;

  CartBloc(this.productRepository) : super([]) {
    getProducts();
  }

  void cartUpdate(ProductModel product) {
    List<ProductModel> updatedList = List.from(state);
    if (updatedList.contains(product)) {
      updatedList.remove(product);
      productRepository.deleteProduct(product.id);
    } else {
      updatedList.add(product);
      productRepository.addProduct(product);
    }
    emit(updatedList);
  }

  void getProducts() async {
    List<ProductModel> updatedList = await productRepository.getAllProducts();
    emit(updatedList);
  }

  void cartClear() async {
    emit([]);
    productRepository.clearCart();
  }
}

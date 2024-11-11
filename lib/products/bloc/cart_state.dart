import 'package:equatable/equatable.dart';
import 'package:get_shop/products/domain/product_model.dart';




sealed class CartState extends Equatable {
  const CartState();

  @override
  List<Object> get props => [];
}

final class CartUpdate extends CartState {
  const CartUpdate();

}
final class CartLoadSuccess extends CartState {
  const CartLoadSuccess({required this.products});
  final List<ProductModel> products;
  int get count => products.length;
}

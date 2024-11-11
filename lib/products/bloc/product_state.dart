import 'package:equatable/equatable.dart';
import 'package:get_shop/products/domain/product_model.dart';

sealed class ProductState extends Equatable {
  const ProductState();

  @override
  List<Object> get props => [];
}

final class ProductInitial extends ProductState {
  const ProductInitial();
}

final class ProductLoading extends ProductState {
  const ProductLoading();
}

final class ProductLoadSuccess extends ProductState {
  const ProductLoadSuccess({required this.product});
  final ProductModel product;
}

final class ProductLoadFailure extends ProductState {
  const ProductLoadFailure({required this.errorMessage});
  final String errorMessage;
}

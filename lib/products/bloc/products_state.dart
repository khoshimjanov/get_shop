import 'package:equatable/equatable.dart';
import 'package:get_shop/products/domain/product_model.dart';

sealed class ProductsState extends Equatable {
  const ProductsState();

  @override
  List<Object> get props => [];
}

final class ProductsInitial extends ProductsState {
  const ProductsInitial();
}

final class ProductsLoading extends ProductsState {
  const ProductsLoading();
}

final class ProductsLoadSuccess extends ProductsState {
  const ProductsLoadSuccess({required this.products});
  final List<ProductModel> products;


  int get count => products.length;
}
final class ProductsLocalSuccess extends ProductsState {
  const ProductsLocalSuccess( {required this.message, required this.products});
  final List<ProductModel> products;
 final String message;

  int get count => products.length;
}

final class ProductsLoadFailure extends ProductsState {
  const ProductsLoadFailure({required this.errorMessage});
  final String errorMessage;
}

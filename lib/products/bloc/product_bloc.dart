import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_shop/products/bloc/product_state.dart';
import 'package:get_shop/products/domain/product_model.dart';
import 'package:get_shop/products/infrastructure/products_repo.dart';

class ProductBloc extends Cubit<ProductState> {
  final ProductsRepository repository;
  ProductBloc(this.repository) : super(const ProductInitial());
  Future<void> getProduct(int id) async {
    emit(const ProductLoading());
    try {
      final ProductModel product = await repository.getProduct(id);
      log("product$product");
      emit(ProductLoadSuccess(product: product));
    } on Exception {
      emit(const ProductLoadFailure(errorMessage: "something went wrong!"));
    } catch (e) {
      emit(ProductLoadFailure(errorMessage: e.toString()));
    }
  }
}

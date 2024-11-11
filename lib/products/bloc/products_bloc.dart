import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_shop/products/bloc/products_state.dart';
import 'package:get_shop/products/domain/product_model.dart';
import 'package:get_shop/products/infrastructure/products_repo.dart';

class ProductsBloc extends Cubit<ProductsState> {
  final ProductsRepository repository;

  ProductsBloc({required this.repository}) : super(const ProductsInitial()) {
    getData();
  }

  Future<void> getData() async {
    emit(const ProductsLoading());
    try {
      final List<ProductModel> products = await repository.getData();
      emit(ProductsLoadSuccess(products: products));
      repository.updateProducts(products);
    } on DioException {
      final localProducts = await repository.getLocalProducts();
      emit(ProductsLocalSuccess(products: localProducts,message: "you are offline"));
    } on SocketException {
      final localProducts = await repository.getLocalProducts();
      emit(ProductsLocalSuccess(products: localProducts,message: "you are offline"));
    } 

    catch (e) {
      emit(ProductsLoadFailure(errorMessage: e.toString()));
    }
  }
}

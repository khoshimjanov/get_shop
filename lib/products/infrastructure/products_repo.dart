
import 'package:dio/dio.dart';
import 'package:get_shop/main.dart';
import 'package:get_shop/products/domain/product_model.dart';
import 'package:sembast/sembast_io.dart';

class ProductsRepository {
  ProductsRepository({required this.database});
  final Database database;
  final StoreRef _store = intMapStoreFactory.store("local_store");
  BaseOptions dioBaseOptions = BaseOptions(
    followRedirects: false,
    sendTimeout: const Duration(seconds: 20),
    receiveTimeout: const Duration(seconds: 20),
    connectTimeout: const Duration(seconds: 5),
  );

  Future<List<ProductModel>> getData() async {
    try {
      final dio = Dio(dioBaseOptions);

      final response = await dio.get("https://dummyjson.com/products");
      final data = response.data;
      final productData = data["products"];
      final List<ProductModel> products = [];
      for (var i in productData) {
        products.add(ProductModel.fromJson(i));
      }

      logger.i("success:got products:${products.length}");

      return products;
    } catch (e) {
      logger.e("get products err: $e");
      rethrow;
    }
  }

  Future<ProductModel> getProduct(int id) async {
    try {
      final dio = Dio(dioBaseOptions);
      final response = await dio.get("https://dummyjson.com/products/$id");
      final data = response.data;
      final ProductModel product = ProductModel.fromJson(data);

      logger.i("got product:$product");
      return product;
    } catch (e) {
      logger.e("get product err: $e");
      rethrow;
    }
  }

  Future<List<ProductModel>> getLocalProducts() async {
    final snapshots = await _store.find(database);
    return snapshots
        .map((snapshot) =>
            ProductModel.fromJson(snapshot.value as Map<String, dynamic>))
        .toList(growable: false);
  }

  Future<void> updateProducts(List<ProductModel> products) async {
    try {
      await _store.delete(database);
      for (var i in products) {
        final addedProduct = i.toJson();
        final reviews = i.reviews.map((e) => e.toJson()).toList();
        addedProduct["reviews"] = reviews;
        await _store.add(database, addedProduct);
      }
    } catch (e) {
      logger.e("error$e");
    }
  }
}

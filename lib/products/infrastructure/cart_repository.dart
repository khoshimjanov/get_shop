import 'package:get_shop/main.dart';
import 'package:get_shop/products/domain/product_model.dart';
import 'package:sembast/sembast_io.dart';

class CartRepository {
  final Database database;
  final StoreRef _store = intMapStoreFactory.store("store");

  CartRepository({required this.database});

  Future<void> addProduct(ProductModel product) async {
    try {
      final addedProduct = product.toJson();
      final reviews = product.reviews.map((e) => e.toJson()).toList();
      addedProduct["reviews"] = reviews;
      await _store.add(database, addedProduct);
    } catch (e) {
      logger.e("error$e");
    }
  }

  Future<void> deleteProduct(int productId) async {
    try {
      final finder = Finder(filter: Filter.equals('id', productId));
      await _store.delete(database, finder: finder);
    } catch (e) {
      logger.e("error in deleting$e");
    }
  }

  Future<void> clearCart() async {
    try {
      await _store.delete(database);
    } catch (e) {
      logger.e("error in deleting$e");
    }
  }

  Future<List<ProductModel>> getAllProducts() async {
    final snapshots = await _store.find(database);
    return snapshots
        .map((snapshot) =>
            ProductModel.fromJson(snapshot.value as Map<String, dynamic>))
        .toList(growable: false);
  }
}

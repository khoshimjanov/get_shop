import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sembast/sembast_io.dart';

// class Init {
//   static Future initialize() async {
//     await _initSembast();
//     _registerRepositories();
//   }

//   static Future _initSembast() async {
//     final appDir = await getApplicationDocumentsDirectory();
//     await appDir.create(recursive: true);
//     final databasePath = join(appDir.path, "store.db");
//     final database = await databaseFactoryIo.openDatabase(databasePath);
//     GetIt.I.registerSingleton<Database>(database);
//   }

//   static _registerRepositories() {
//     GetIt.I.registerLazySingleton<ProductRepository>(
//         () => CartProductRepository());
//   }
// }

// abstract class ProductRepository {
//   Future deleteProduct(int productId);

//   Future<List<ProductModel>> getAllProducts();

//   void addProduct(ProductModel product);
//   Future<void> clearCart();
// }

// class CartProductRepository extends ProductRepository {
//   final Database _database = GetIt.I.get();
//   final StoreRef _store = intMapStoreFactory.store("store");

//   @override
//   Future<void> addProduct(ProductModel product) async {
//     try {
//       final addedProduct = product.toJson();
//       final reviews = product.reviews.map((e) => e.toJson()).toList();
//       addedProduct["reviews"] = reviews;
//       await _store.add(_database, addedProduct);
//     } catch (e) {
//       log("error$e");
//     }
//   }

//   @override
//   Future<void> deleteProduct(int productId) async {
//     try {
//       final finder = Finder(filter: Filter.equals('id', productId));
//       await _store.delete(_database, finder: finder);
//     } catch (e) {
//       log("error in deleting$e");
//     }
//   }

//   @override
//   Future<void> clearCart() async {
//     try {
//       await _store.delete(_database);
//     } catch (e) {
//       log("error in deleting$e");
//     }
//   }

//   @override
//   Future<List<ProductModel>> getAllProducts() async {
//     final snapshots = await _store.find(_database);
//     return snapshots
//         .map((snapshot) =>
//             ProductModel.fromJson(snapshot.value as Map<String, dynamic>))
//         .toList(growable: false);
//   }
// }
class InitDatabase{
  // static Future initialize() async {
  //   await _initSembast();
  //   _registerRepositories();
  // }

  static Future<Database> initSembast() async {
    final appDir = await getApplicationDocumentsDirectory();
    await appDir.create(recursive: true);
    final databasePath = join(appDir.path, "stores.db");
  final database = await databaseFactoryIo.openDatabase(databasePath);
  return database;
    // GetIt.I.registerSingleton<Database>(database);
  }

  // static _registerRepositories() {
  //   GetIt.I.registerLazySingleton<ProductRepository>(
  //       () => CartProductRepository());
  // }
}
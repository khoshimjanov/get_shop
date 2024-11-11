import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_shop/products/bloc/cart_bloc.dart';
import 'package:get_shop/products/bloc/product_bloc.dart';
import 'package:get_shop/products/bloc/products_bloc.dart';
import 'package:get_shop/products/infrastructure/cart_repository.dart';
import 'package:get_shop/products/infrastructure/products_repo.dart';
import 'package:get_shop/products/infrastructure/sembast_database.dart';
import 'package:get_shop/products/presentation/pages/home_page.dart';
import 'package:logger/web.dart';
import 'package:sembast/sembast_io.dart';

final logger = Logger();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final database = await InitDatabase.initSembast();
  runApp(MyApp(
    database: database,
  ));
}

class MyApp extends StatelessWidget {
  final Database database;
  const MyApp({super.key, required this.database});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => ProductsRepository(database: database),
        ),
        RepositoryProvider(
          create: (context) => CartRepository(database: database),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) => ProductsBloc(
                    repository: context.read<ProductsRepository>(),
                  )),
          BlocProvider(
              create: (context) => ProductBloc(
                    context.read<ProductsRepository>(),
                  )),
          BlocProvider(
            create: (context) => CartBloc(
              context.read<CartRepository>(),
            ),
          ),
        ],
        child: const MaterialApp(
          color: Colors.white,
          debugShowCheckedModeBanner: false,
          title: 'Shop',
          debugShowMaterialGrid: false,
          home: HomePage(),
        ),
      ),
    );
  }
}

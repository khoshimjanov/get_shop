import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:get_shop/products/bloc/cart_bloc.dart';
import 'package:get_shop/products/bloc/products_bloc.dart';
import 'package:get_shop/products/bloc/products_state.dart';
import 'package:get_shop/products/domain/product_model.dart';
import 'package:get_shop/products/presentation/pages/cart_page.dart';
import 'package:get_shop/products/presentation/widgets/product_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, kToolbarHeight),
        child: HomeAppBar(),
      ),
      body: BlocBuilder<ProductsBloc, ProductsState>(
        builder: (context, state) {
          return switch (state) {
            
            ProductsInitial() => const SizedBox(),
            ProductsLoadSuccess() => ProductsView(
                products: state.products,
              ),
            ProductsLocalSuccess() => ProductsView(
                products: state.products,
                message: state.message,
              ),
            ProductsLoadFailure() => Center(child: Text(state.errorMessage)),
            ProductsLoading() =>
              const Center(child: CupertinoActivityIndicator()),
          };
        },
      ),
    );
  }
}

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final cartLength = context.watch<CartBloc>().state.length;

    return AppBar(
      title: const Text("iShop"),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: InkWell(
            borderRadius: BorderRadius.circular(30),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const CartPage()),
            ),
            child: Padding(
              padding: const EdgeInsets.all(3),
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 0),
                    child: Icon(Icons.shopping_cart),
                  ),
                  if (cartLength != 0)
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        cartLength.toString(),
                        style:
                            const TextStyle(color: Colors.white, fontSize: 10),
                      ),
                    ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

class ProductsView extends StatelessWidget {
  final List<ProductModel> products;
  final String? message;
  const ProductsView({super.key, required this.products, this.message});

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        context.read<ProductsBloc>().getData();
      },
      child: Column(
        children: [
          Text(message ?? ''),
          Expanded(
            child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) =>
                  ProductItem(product: products[index]),
            ),
          ),
        ],
      ),
    );
  }
}

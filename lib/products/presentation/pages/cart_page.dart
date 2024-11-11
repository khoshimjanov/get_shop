import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_shop/products/bloc/cart_bloc.dart';
import 'package:get_shop/products/domain/product_model.dart';
import 'package:get_shop/products/presentation/pages/home_page.dart';
import 'package:get_shop/products/presentation/style/theme.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, List<ProductModel>>(
      builder: (context, state) {
        return Scaffold(
          appBar: PreferredSize(
              preferredSize: const Size(double.infinity, 60),
              child: CartAppBar(cartLength: state.length)),
          body: state.isEmpty
              ? const Center(
                  child: Text(
                    "Cart is empty, please add products",
                    style: AppStyles.fontSize18Weight500,
                  ),
                )
              : ProductsView(products: state),
          floatingActionButton: FloatingActionButton(
            
            onPressed: () {
              context.read<CartBloc>().cartClear();
            },
          
            child: const Icon(Icons.delete),
          ),
        );
      },
    );
  }
}

class CartAppBar extends StatelessWidget {
  const CartAppBar({
    super.key,
    required this.cartLength,
  });

  final int cartLength;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text("Cart"),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
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
                      style: const TextStyle(color: Colors.white, fontSize: 10),
                    ),
                  ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_shop/products/bloc/cart_bloc.dart';
import 'package:get_shop/products/bloc/product_bloc.dart';
import 'package:get_shop/products/bloc/product_state.dart';
import 'package:get_shop/products/domain/product_model.dart';
import 'package:get_shop/products/infrastructure/functions/functions.dart';
import 'package:get_shop/products/presentation/style/colors.dart';
import 'package:get_shop/products/presentation/style/theme.dart';

class ProductPage extends StatelessWidget {
  final ProductModel productItem;
  const ProductPage({
    super.key,
    required this.productItem,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProductBloc, ProductState>(
      listener: (context, state) {},
      bloc: context.read<ProductBloc>()..getProduct(productItem.id),
      builder: (context, state) {
        return switch (state) {
          ProductInitial() => const SizedBox(),
          ProductLoadSuccess() => ProductView(
              product: state.product,
            ),
          ProductLoadFailure() =>
            Scaffold(body:ProductView(
              product: productItem,
            ),),
          ProductLoading() =>
            const Scaffold(body: Center(child: CupertinoActivityIndicator())),
        };
      },
    );
  }
}

class ProductView extends StatelessWidget {
  const ProductView({
    super.key,
    required this.product,
  });

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    final isAdded = context.watch<CartBloc>().state.contains(product);
    return Scaffold(
      appBar: productAppbar(isAdded, context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                    SizedBox(
                        width: double.infinity,
                    height: 200,
                    child: Image.network(
                      product.thumbnail,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return const Center(
                          child: Icon(
                            Icons.broken_image,
                            color: Colors.grey,
                            size: 50,
                          ),
                        );
                      },
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) {
                          return child;
                        } else {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                      },
                    ),
                  ),
            
                  Row(
                    children: [
                      const Icon(
                        size: 40,
                        Icons.star,
                        color: AppColors.gold,
                      ),
                      Text(
                        product.rating.toString(),
                        style: AppStyles.fontSize15Weight500,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Text(
              product.brand,
              style: AppStyles.fontSize15Weight500,
            ),
            Text(product.title),
            Text("\$${product.price.toString()}"),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                product.description,
                style: AppStyles.fontSize15Weight500,
              ),
            ),
            const Text("Reviews", style: AppStyles.fontSize15Weight500),
            Column(
              children: List.generate(
                product.reviews.length,
                (index) {
                  final reviewer = product.reviews[index];
                  return ListTile(
                    title: Text(reviewer.name),
                    subtitle: Text("${reviewer.comment} ${reviewer.rating}"),
                    trailing: Text(convertTime(reviewer.date)),
                    leading: SizedBox(
                      width: 40,
                      height: 40,
                      child: Row(
                        children: [
                          const Icon(
                            Icons.star,
                            color: AppColors.gold,
                          ),
                          Text(" ${reviewer.rating}"),
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  AppBar productAppbar(bool isAdded, BuildContext context) {
    return AppBar(
      title: Text(
        product.title,
      ),
      actions: [
        CupertinoButton(
          child: isAdded
              ? const Icon(Icons.shopping_cart)
              : const Icon(Icons.shopping_cart_outlined),
          onPressed: () {
            context.read<CartBloc>().cartUpdate(product);
          },
        ),
      ],
    );
  }
}

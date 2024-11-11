import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_shop/products/bloc/cart_bloc.dart';
import 'package:get_shop/products/domain/product_model.dart';
import 'package:get_shop/products/presentation/pages/product_page.dart';
import 'package:get_shop/products/presentation/style/colors.dart';
import 'package:get_shop/products/presentation/style/theme.dart';

class ProductItem extends StatelessWidget {
  final ProductModel product;
  const ProductItem({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final isAdded = context.watch<CartBloc>().state.contains(product);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          InkWell(
            borderRadius: BorderRadius.circular(20),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ProductPage(
                  productItem: product,
                ),
              ));
            },
            child: Ink(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.greyish),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  SizedBox(
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          product.title,
                          style: AppStyles.fontSize16Weight500,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Text(
                        "\$${product.price.toString()}",
                        style: AppStyles.fontSize18Weight500,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          CupertinoButton(
            child: isAdded
                ? const Icon(Icons.shopping_cart)
                : const Icon(Icons.shopping_cart_outlined),
            onPressed: () {
              context.read<CartBloc>().cartUpdate(product);
            },
          ),
        ],
      ),
    );
  }
}

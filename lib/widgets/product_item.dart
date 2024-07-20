// ignore_for_file: sized_box_for_whitespace

import 'package:first_app/screens/prod_details.dart';
import 'package:flutter/material.dart';
import 'package:first_app/models/product.dart';
import 'package:first_app/providers/cart_provider.dart';

class ProductItem extends StatefulWidget {
  const ProductItem({super.key, required this.product});

  final Product product;

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  @override
  Widget build(BuildContext context) {
    final provider = CartProvider.of(context);

    return Column(
      children: [
        Container(
          height: 175,
          width: 155,
          child: Card(
            elevation: 0,
            color: const Color.fromARGB(255, 245, 233, 234),
            child: Stack(
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                ProdDetailsScreen(product: widget.product),
                          ),
                        );
                      },
                      child: Container(
                        height: 100,
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Image.asset(
                                widget.product.imageAsset,
                                height: 150,
                                fit: BoxFit.contain,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 110, top: 10),
                              child: Icon(
                                Icons.favorite_border,
                                color: Color.fromARGB(255, 137, 13, 95),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: Container(
                        height: 42,
                        color: Colors.white,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 3, top: 8),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 25),
                                    child: Text(
                                      '\$${widget.product.price}',
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  const SizedBox(height: 2),
                                  const Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                        size: 12,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                        size: 12,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                        size: 12,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                        size: 12,
                                      ),
                                      Icon(
                                        Icons.star_border,
                                        color: Colors.yellow,
                                        size: 12,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(left: 50),
                                child: GestureDetector(
                                  onTap: () {
                                    provider.toggleFavorite(widget.product);
                                    const snackBar = SnackBar(
                                      content: Text(
                                        "Successfully added!",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25,
                                          color: Colors.white,
                                        ),
                                      ),
                                      duration: Duration(seconds: 1),
                                    );
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(snackBar);
                                  },
                                  child: const CircleAvatar(
                                      backgroundColor:
                                          Color.fromARGB(255, 211, 208, 208),
                                      radius: 15,
                                      child:
                                          Icon(Icons.add_shopping_cart_sharp)),
                                ))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

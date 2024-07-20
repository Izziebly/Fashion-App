import 'package:first_app/providers/cart_provider.dart';
import 'package:flutter/material.dart';

import 'package:first_app/models/product.dart';

class ProdDetailsScreen extends StatefulWidget {
  const ProdDetailsScreen({super.key, required this.product});
  final Product product;

  @override
  State<ProdDetailsScreen> createState() => _ProdDetailsScreenState();
}

class _ProdDetailsScreenState extends State<ProdDetailsScreen> {
  int currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    final provider = CartProvider.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.product.title),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite,
                color: Color.fromARGB(255, 137, 13, 95),
              ))
        ],
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 130),
                child: Image.asset(
                  widget.product.imageAsset,
                  height: 300,
                  //width: double.infinity,
                  fit: BoxFit.contain,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 370),
                child: Container(
                  height: 417,
                  width: double.infinity,
                  color: const Color.fromARGB(255, 248, 240, 240),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Column(
                      children: [
                        const Text(
                          'Size',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            const SizedBox(width: 45),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.only(
                                    left: 15, right: 15, top: 7, bottom: 7),
                                backgroundColor:
                                    const Color.fromARGB(255, 240, 213, 213),
                                foregroundColor:
                                    const Color.fromARGB(255, 137, 13, 95),
                                textStyle: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                                minimumSize: const Size(10, 20),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              child: const Text('S'),
                            ),
                            const SizedBox(width: 18),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.only(
                                    left: 15, right: 15, top: 7, bottom: 7),
                                backgroundColor:
                                    const Color.fromARGB(255, 240, 213, 213),
                                foregroundColor:
                                    const Color.fromARGB(255, 137, 13, 95),
                                textStyle: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                                minimumSize: const Size(10, 20),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              child: const Text('M'),
                            ),
                            const SizedBox(width: 18),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.only(
                                    left: 16, right: 16, top: 7, bottom: 7),
                                backgroundColor:
                                    const Color.fromARGB(255, 240, 213, 213),
                                foregroundColor:
                                    const Color.fromARGB(255, 137, 13, 95),
                                textStyle: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                                minimumSize: const Size(10, 20),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              child: const Text('L'),
                            ),
                            const SizedBox(width: 18),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.only(
                                    left: 10, right: 10, top: 7, bottom: 7),
                                backgroundColor:
                                    const Color.fromARGB(255, 240, 213, 213),
                                foregroundColor:
                                    const Color.fromARGB(255, 137, 13, 95),
                                textStyle: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                                minimumSize: const Size(10, 20),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              child: const Text('XL'),
                            ),
                            const SizedBox(width: 18),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.only(
                                    left: 10, right: 10, top: 7, bottom: 7),
                                backgroundColor:
                                    const Color.fromARGB(255, 240, 213, 213),
                                foregroundColor:
                                    const Color.fromARGB(255, 137, 13, 95),
                                textStyle: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                                minimumSize: const Size(10, 20),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              child: const Text('XXL'),
                            ),
                          ],
                        ),
                        const SizedBox(height: 18),
                        const Text(
                          'Colour',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            const SizedBox(width: 60),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.only(
                                    top: 8, bottom: 8, left: 20, right: 20),
                                backgroundColor:
                                    const Color.fromARGB(255, 240, 213, 213),
                                foregroundColor:
                                    const Color.fromARGB(255, 137, 13, 95),
                                textStyle: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                                minimumSize: const Size(10, 20),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              child: const Text('Black'),
                            ),
                            const SizedBox(width: 20),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.only(
                                    top: 8, bottom: 8, left: 20, right: 20),
                                backgroundColor:
                                    const Color.fromARGB(255, 240, 213, 213),
                                foregroundColor:
                                    const Color.fromARGB(255, 137, 13, 95),
                                textStyle: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                                minimumSize: const Size(10, 20),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              child: const Text('White'),
                            ),
                            const SizedBox(width: 20),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.only(
                                    top: 8, bottom: 8, left: 20, right: 20),
                                backgroundColor:
                                    const Color.fromARGB(255, 240, 213, 213),
                                foregroundColor:
                                    const Color.fromARGB(255, 137, 13, 95),
                                textStyle: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                                minimumSize: const Size(10, 20),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              child: const Text('Yellow'),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        const Text(
                          'Quantity',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                          color: Color.fromARGB(255, 240, 213, 213),
                            borderRadius: BorderRadius.circular(10)
                          ),
                          width: 130,
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  if (currentIndex != 1) {
                                    setState(() {
                                      currentIndex--;
                                    });
                                  }
                                },
                                iconSize: 18,
                                icon: const Icon(
                                  Icons.remove,
                                  color: Color.fromARGB(255, 137, 13, 95),
                                ),
                              ),
                              const SizedBox(width: 5),
                              Text(
                                currentIndex.toString(),
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 137, 13, 95),
                                ),
                              ),
                              const SizedBox(width: 5),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    currentIndex++;
                                  });
                                },
                                iconSize: 18,
                                icon: const Icon(
                                  Icons.add,
                                  color: Color.fromARGB(255, 137, 13, 95),
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 25),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 50,
                            right: 50,
                          ),
                          child: ElevatedButton(
                            onPressed: () {
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
                            style: ElevatedButton.styleFrom(
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 10),
                              backgroundColor:
                                  const Color.fromARGB(255, 137, 13, 95),
                              foregroundColor:
                                  const Color.fromARGB(255, 247, 241, 244),
                              textStyle: const TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.bold),
                              elevation: 2,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Add To Cart',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 25,
                                  ),
                                ),
                                SizedBox(width: 15),
                                Icon(Icons.shopping_cart_checkout_sharp),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 290, left: 110),
                child: Card(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25))),
                  color: const Color.fromARGB(225, 228, 181, 181),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 15,
                      bottom: 15,
                      left: 35,
                      right: 35,
                    ),
                    child: Column(
                      children: [
                        Text(
                          widget.product.title,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text(
                          '\$${widget.product.price}',
                          style: const TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 25),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

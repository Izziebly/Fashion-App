// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:first_app/models/category.dart';
import 'package:first_app/screens/load_screen.dart';
import 'package:flutter/material.dart';

import 'package:first_app/widgets/product_item.dart';
import 'package:first_app/models/product.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  List<List<Product>> selectCategories = [
    all,
    gowns,
    shirts,
    pants,
    jackets,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50, left: 15),
                  child: Container(
                    height: 50,
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/shades.webp'),
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Welcome Izzie!',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(width: 150),
                        TextButton(
                          onPressed: () {},
                          style: ButtonStyle(
                              foregroundColor: const MaterialStatePropertyAll(
                                Color.fromARGB(255, 116, 7, 66),
                              ),
                              overlayColor: const MaterialStatePropertyAll(
                                Color.fromARGB(255, 116, 7, 66),
                              ),
                              minimumSize:
                                  MaterialStateProperty.all(const Size(5, 5))),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const LoadScreen(),
                                ),
                              );
                            },
                            child: Text(
                              'Log Out',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20),
                  child: Text(
                    'Categories',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: 35,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 10, right: 0),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: selectedIndex == index
                                  ? const Color.fromARGB(255, 116, 7, 66)
                                  : null,
                              foregroundColor: selectedIndex == index
                                  ? const Color.fromARGB(255, 255, 255, 255)
                                  : const Color.fromARGB(255, 116, 7, 66),
                              textStyle: const TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.bold),
                              side: const BorderSide(
                                color: Color.fromARGB(255, 116, 7, 66),
                                width: 1.2,
                              ),
                              elevation: 2,
                              minimumSize: const Size(100, 35),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              )),
                          child: Text(categories[index].title),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  height: 570,
                  child: SingleChildScrollView(
                    child: GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 1.1,
                        ),
                        itemCount: selectCategories[selectedIndex].length,
                        itemBuilder: (context, index) {
                          return ProductItem(
                              product: selectCategories[selectedIndex][index]);
                        }),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

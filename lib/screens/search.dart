// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            const BoxShadow(
                              color: Color.fromARGB(31, 145, 144, 144),
                              offset: Offset(0, 4),
                              blurRadius: 1.0,
                            ),
                          ],
                          color: const Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(10)),
                      width: 80,
                      height: 35,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: DropdownButton(
                            underline: Container(),
                            items: const [
                              DropdownMenuItem(
                                child: Text('All'),
                              ),
                            ],
                            onChanged: (value) {}),
                      ),
                    ),
                    const SizedBox(width: 40),
                    Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            const BoxShadow(
                              color: Color.fromARGB(31, 145, 144, 144),
                              offset: Offset(0, 4),
                              blurRadius: 1.0,
                            ),
                          ],
                          color: const Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(10)),
                      width: 250,
                      height: 35,
                      child: Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Container(
                            child: TextFormField(
                              decoration: const InputDecoration(
                                  hintText: 'Search...',
                                  border: InputBorder.none,
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.auto,
                                  suffixIcon: Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 10),
                                    child: Icon(Icons.search),
                                  )),
                            ),
                          )),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            const BoxShadow(
                              color: Color.fromARGB(31, 145, 144, 144),
                              offset: Offset(0, 4),
                              blurRadius: 1.0,
                            ),
                          ],
                          color: const Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(10)),
                      width: 120,
                      height: 40,
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 5, left: 15),
                            child: TextButton(
                        onPressed: () {},
                        child: const Text(
                              'Trending',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                      ),
                            
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 50, top: 10),
                            child: Text(
                              '.',
                              style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),const SizedBox(width: 8,),
                    Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            const BoxShadow(
                              color: Color.fromARGB(31, 145, 144, 144),
                              offset: Offset(0, 4),
                              blurRadius: 1.0,
                            ),
                          ],
                          color: const Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(10)),
                      width: 120,
                      height: 40,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 5, left: 5),
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Popular',
                            style: TextStyle(color: Colors.black38),
                          ),
                        ),
                      ),
                    ), const SizedBox(width: 8,),
                    Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            const BoxShadow(
                              color: Color.fromARGB(31, 145, 144, 144),
                              offset: Offset(0, 4),
                              blurRadius: 1.0,
                            ),
                          ],
                          color: const Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(10)),
                      width: 120,
                      height: 40,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 5, left: 0),
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Discount Sales',
                            style: TextStyle(color: Colors.black38),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

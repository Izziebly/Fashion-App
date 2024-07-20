// ignore_for_file: unused_element

import 'dart:async';

import 'package:first_app/screens/login_screen.dart';
import 'package:first_app/screens/signup_screen.dart';
import 'package:flutter/material.dart';

import 'package:first_app/widgets/place_holders/text_place_holder.dart';
import 'package:first_app/widgets/place_holders/img_place_holder.dart';

class LoadScreen extends StatefulWidget {
  const LoadScreen({super.key});

  @override
  State<LoadScreen> createState() {
    return _LoadScreenState();
  }
}

late List<Widget> _pages;

late List<Widget> _texts;

int _activePage = 0;
int _activeText = 0;

final PageController _imgPageController = PageController(initialPage: 0);
final PageController _textPageController = PageController(initialPage: 0);

Timer? _timer;

class _LoadScreenState extends State<LoadScreen> {
  void startImgTimer() {
    _timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      if (_imgPageController.page == imagePath.length - 1) {
        _imgPageController.animateTo(0,
            duration: const Duration(milliseconds: 300),
            curve: Curves.bounceInOut);
      } else {
        _imgPageController.nextPage(
            duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
      }
    });
  }

  void startTextTimer() {
    _timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      if (_textPageController.page == imageText.length - 1) {
        _textPageController.animateTo(0,
            duration: const Duration(milliseconds: 300),
            curve: Curves.bounceInOut);
      } else {
        _textPageController.nextPage(
            duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _pages = List.generate(
      imagePath.length,
      (index) => ImagePlaceHolder(
        imagePath: imagePath[index],
      ),
    );
    startImgTimer();
    _texts = List.generate(
      imageText.length,
      (index) => TextPlaceHolder(
        imageText: imageText[index],
      ),
    );
    startTextTimer();
  }

  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Stack(
            children: [
              PageView.builder(
                controller: _imgPageController,
                itemCount: imagePath.length,
                onPageChanged: (value) => {
                  setState(() {
                    _activePage = value;
                  }),
                },
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      // ignore: sized_box_for_whitespace
                      Container(
                        height: 500,
                        width: double.infinity,
                        child: _pages[index],
                      )
                    ],
                  );
                },
              ),
            ],
          ),
          // ignore: sized_box_for_whitespace
          Positioned(
            top: 450,
            left: 0,
            right: 0,
            child: Card(
              margin: const EdgeInsets.symmetric(horizontal: 0),
              // ignore: sized_box_for_whitespace
              child: Container(
                width: double.infinity,
                height: 450,
                child: PageView.builder(
                    controller: _textPageController,
                    itemCount: imageText.length,
                    onPageChanged: (value) => {
                          setState(() {
                            _activeText = value;
                          }),
                        },
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Column(
                          children: [
                            Container(
                              color: Colors.transparent,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: List<Widget>.generate(
                                  _pages.length,
                                  (index) => Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5),
                                    child: InkWell(
                                      onTap: () {
                                        _imgPageController.animateToPage(index,
                                            duration: const Duration(
                                                milliseconds: 300),
                                            curve: Curves.easeIn);
                                      },
                                      child: CircleAvatar(
                                        radius: 6,
                                        backgroundColor: _activePage == index
                                            ? const Color.fromARGB(
                                                255, 218, 17, 174)
                                            : Colors.grey,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 25),
                            Text(
                              imageText[index],
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            const SizedBox(height: 25),
                            const Text(
                              'At Stylo, we make sure you are get the latest trends and style from wherever you are.',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 60),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const LogInScreen(),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 116, 7, 66),
                                foregroundColor: Colors.white,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 150, vertical: 15),
                                textStyle: const TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                                elevation: 2,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              child: const Text('Log In'),
                            ),
                            const SizedBox(height: 20),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const SignUpScreen(),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  foregroundColor:
                                      const Color.fromARGB(255, 116, 7, 66),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 145, vertical: 15),
                                  textStyle: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                  side: const BorderSide(
                                    color: Color.fromARGB(255, 116, 7, 66),
                                    width: 1,
                                  ),
                                  elevation: 2,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  )),
                              child: const Text('Sign Up'),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

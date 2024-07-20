// ignore_for_file: sized_box_for_whitespace

import 'package:first_app/screens/signup_screen.dart';
import 'package:first_app/screens/tabs_screen.dart';
import 'package:first_app/widgets/logins/log_with_email.dart';
import 'package:first_app/widgets/logins/log_with_number.dart';
import 'package:flutter/material.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() {
    return _LogInScreenState();
  }
}

var _isChecked = true;

int _currentPage = 0;

final PageController _pageController = PageController();

List<Widget> pagesList = [const WithEmail(), const WithNumber()];

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 30),
              child: Container(
                alignment: Alignment.topLeft,
                child: const Text(
                  'Log In',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 0,
                left: 30,
              ),
              child: Container(
                alignment: Alignment.topLeft,
                child: const Padding(
                  padding: EdgeInsets.only(right: 30),
                  child: Text(
                    'We are glad to have you back',
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: const Color.fromARGB(57, 177, 176, 176),
              ),
              width: 350,
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 2, bottom: 2),
                    child: TextButton(
                      onPressed: () {
                        if (_currentPage == 0) {
                          _pageController.jumpToPage(0);
                        } else {
                          _pageController.animateToPage(0,
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.ease);
                        }
                      },
                      style: ButtonStyle(
                          foregroundColor:
                              const MaterialStatePropertyAll(Colors.black87),
                          backgroundColor: _currentPage == 0
                              ? const MaterialStatePropertyAll(Colors.white)
                              : null,
                          overlayColor:
                              const MaterialStatePropertyAll(Colors.black26),
                          minimumSize:
                              MaterialStateProperty.all(const Size(5, 10))),
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                        child: Text(
                          'Email address',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 2, bottom: 2),
                    child: TextButton(
                      onPressed: () {
                        _pageController.animateToPage(1,
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.ease);
                      },
                      style: ButtonStyle(
                          foregroundColor:
                              const MaterialStatePropertyAll(Colors.black87),
                          overlayColor:
                              const MaterialStatePropertyAll(Colors.black26),
                          backgroundColor: _currentPage == 1
                              ? const MaterialStatePropertyAll(Colors.white)
                              : null,
                          minimumSize:
                              MaterialStateProperty.all(const Size(5, 5))),
                      child: const Padding(
                        padding: EdgeInsets.only(right: 0, left: 25),
                        child: Text(
                          'Phone Number',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 300,
              child: Stack(
                children: [
                  PageView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    controller: _pageController,
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        return const WithEmail();
                      } else {
                        return const WithNumber();
                      }
                    },
                    onPageChanged: (index) {
                      setState(() {
                        _currentPage = index;
                      });
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 30, right: 30),
              child: Container(
                height: 20,
                child: Row(
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _isChecked = !_isChecked;
                            });
                          },
                          child: Row(
                            children: [
                              _isChecked
                                  ? Padding(
                                      padding: const EdgeInsets.only(top: 3),
                                      child: Image.asset(
                                        'assets/images/task.webp',
                                        width: 25,
                                        height: 20,
                                      ),
                                    )
                                  : const Icon(
                                      Icons.check_box_outline_blank_outlined,
                                      size: 24,
                                    ),
                              const Text(
                                'Remember Me',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13,
                                    color: Colors.black87),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 90),
                    GestureDetector(
                      onTap: () {},
                      child: const Text(
                        'Forgotten Password?',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.black87),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 45),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TabsScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 116, 7, 66),
                  foregroundColor: Colors.white,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 150, vertical: 15),
                  textStyle: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                  elevation: 2,
                  minimumSize: const Size(160, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  'Log In',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 45, left: 30),
              child: Row(
                children: [
                  Container(
                    width: 112,
                    height: 0.8,
                    color: Colors.black,
                  ),
                  const SizedBox(width: 10),
                  const Text('Or continue with'),
                  const SizedBox(width: 10),
                  Container(
                    width: 112,
                    height: 0.8,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 45, left: 30, right: 30),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: const Color.fromARGB(255, 116, 7, 66),
                    textStyle: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                    side: const BorderSide(
                      color: Color.fromARGB(255, 116, 7, 66),
                      width: 1.5,
                    ),
                    minimumSize: const Size(160, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/goog.webp',
                      width: 25,
                      height: 25,
                    ),
                    const SizedBox(width: 40),
                    const Text(
                      'Log in with Google',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 30, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account?",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Colors.black87),
                  ),
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUpScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Color.fromARGB(255, 116, 7, 66),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

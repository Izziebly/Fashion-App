import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WithNumber extends StatefulWidget{
const WithNumber({super.key});

  @override
  State<WithNumber> createState() {
    return _WithNumberState();
  }
}

var _obscureText = true;

class _WithNumberState extends State<WithNumber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
           const Padding(
              padding: EdgeInsets.only(top: 45, left: 30),
              child: Row(
                children: [
                  Icon(CupertinoIcons.phone),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    'Phone number',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 10, right: 30),
              child: TextFormField(
                  keyboardType: TextInputType.phone,
                  textCapitalization: TextCapitalization.none,
                  decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 116, 7, 66))),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green)),
                      errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red)))),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 45, left: 30),
              child: Row(
                children: [
                  Icon(Icons.lock),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    'Password',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 30, right: 30),
              child: TextFormField(
                obscureText: _obscureText,
                decoration: InputDecoration(
                  suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                      child: Icon(
                        _obscureText ? Icons.visibility_off : Icons.visibility,
                      )),
                  enabledBorder: const OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 116, 7, 66))),
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)),
                  errorBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red)),
                ),
              ),
            ),
          ]
        ),
      ),
    );
  }
}

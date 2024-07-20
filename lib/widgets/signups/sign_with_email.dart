import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignWithEmail extends StatefulWidget {
  const SignWithEmail({super.key});

  @override
  State<SignWithEmail> createState() {
    return _SignWithEmailState();
  }
}

var _obscureSignText = true;

class _SignWithEmailState extends State<SignWithEmail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(children: [
          const Padding(
            padding: EdgeInsets.only(top: 45, left: 30),
            child: Row(
              children: [
                Icon(CupertinoIcons.mail),
                SizedBox(
                  width: 6,
                ),
                Text(
                  'Email',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 10, right: 30),
            child: Form(
              child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  autocorrect: false,
                  textCapitalization: TextCapitalization.none,
                  decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color.fromARGB(255, 116, 7, 66))),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green)),
                      errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red)))),
            ),
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
              obscureText: _obscureSignText,
              decoration: InputDecoration(
                suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        _obscureSignText = !_obscureSignText;
                      });
                    },
                    child: Icon(
                      _obscureSignText ? Icons.visibility_off : Icons.visibility,
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
        ]),
      ),
    );
  }
}

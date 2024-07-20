
import 'package:first_app/screens/load_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:first_app/providers/cart_provider.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => CartProvider()),
    ],
      child: const MaterialApp(
      home: LoadScreen()
        ),
    ),
);
}

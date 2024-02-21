import 'package:flutter/material.dart';
import 'package:store_app/services/update_product_service.dart';
import 'package:store_app/views/home_view.dart';
import 'package:store_app/views/update_product_view.dart';

void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        // colorScheme: ColorScheme.fromSeed(
        //   seedColor: Colors.deepOrange,
        // ),
        useMaterial3: false,
      ),
      routes: {
        HomeView.id: (context) => const HomeView(),
        UpdateProductView.id: (context) =>  UpdateProductView(),
      },
      initialRoute: HomeView.id,
    );
  }
}

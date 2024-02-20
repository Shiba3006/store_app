import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: ButtonBar(
              children: [
                ElevatedButton(
                  child: const Text('data'),
                  onPressed: () async {
                    http.Response response = await http.post(
                      Uri.parse('https://fakestoreapi.com/products'),
                      body: {
                        "id": '21',
                        "title": "test",
                        "price": "13.1",
                        "description": "test product",
                      },
                      headers: {
                        "Content-Type": "application/x-www-form-urlencoded",
                        'Accept': 'application/json',
                        'Authorization':
                            'Bearer gf3PjQc3T1et35yIfB4K0rh5sIV460HWLtqez5vBFPfPJCuStxqJrMrNT7Y7LIWWHJfEWUcZY0K4mW1ukowen129lPeMSvnOr4ZbyxIoZcqt5sGdDXjpwoYvXKRJdesp'
                      },
                    );

                    print(response.body);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

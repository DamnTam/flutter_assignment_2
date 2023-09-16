import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Shopping List'),
        actions: [
          Icon(Icons.shopping_cart),
          SizedBox(width: 15,)
        ],
        centerTitle: true,
      ),
      body:   Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: const [
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text('Apple'),
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text('Shirt'),
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text('Bannana'),
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text('Fish'),
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text('Favourite'),
            ),

          ],
        ),
      ),
    );
  }
}

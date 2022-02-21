import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BloC Tutorial"),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              alignment: Alignment.bottomLeft,
              height: 150,
              width: double.infinity,
              color: const Color.fromARGB(255, 117, 228, 121),
              child: const Text(
                "BloC Tutorial",
                style: TextStyle(fontSize: 30),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home", style: TextStyle(fontSize: 20)),
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ));
              },
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Bloc Management", style: TextStyle(fontSize: 20)),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/BlocManagement');
              },
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home", style: TextStyle(fontSize: 20)),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home", style: TextStyle(fontSize: 20)),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home", style: TextStyle(fontSize: 20)),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text(
          "BloC Tutorial",
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}

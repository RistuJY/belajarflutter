import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Belajar Flutter',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Belajar Flutter"),
        actions: [ IconButton(onPressed: () {}, icon: Icon(Icons.menu))],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text("Ini Textnya Miring",
                style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
              ),
              const Text("Ini Textnya Biasa Warna Biru",
                style: TextStyle(fontSize: 20, color: Color(0xFFF0F8FF)),
              ),
              const Text("Ini Textnya Biasa Tipis",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w100),
              ),
              const Text("Ini Textnya Biasa Tebal",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.home,
                    size: 40,
                  ),
                  Icon(
                    Icons.person,
                    size: 40,
                  ),
                  Icon(
                    Icons.person,
                    size: 40,
                    color: Colors.cyan,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 300,
                height: 100,
                child: Image.network(
                  "https://i.pinimg.com/474x/8c/a4/bf/8ca4bfbb00f63874ac46c1549f5ad79b.jpg",
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                width: 200,
                height: 100,
                child: Image.asset("assets/image/gambar1.jpg"
                ),
              ),
              Container(
                width: 200,
                height: 100,
                child: Image.asset("assets/image/gambar2.jpg"
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    print("Tekan Button");
                  },
                  child: const Text("Ini Elevated Button")),
              OutlinedButton(
                  onPressed: () {},
                  child: const Text("Ini Outlined Button")),
              TextButton(
                  onPressed: () {},
                  child: const Text("Ini Text Button")),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 200,
                child: const TextField(
                  decoration: InputDecoration(
                      hintText: "Username",
                      icon: Icon(Icons.person),
                      border: OutlineInputBorder(
                          borderRadius:
                          BorderRadius.all(Radius.circular(12)))),
                ),
              ),
              Container(
                width: 200,
                child: const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Password",
                      icon: Icon(Icons.lock),
                      border: OutlineInputBorder(
                          borderRadius:
                          BorderRadius.all(Radius.circular(12)))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
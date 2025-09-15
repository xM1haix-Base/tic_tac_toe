import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

///Main skelethon of the app
class MyApp extends StatelessWidget {
  ///
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Tic Tac Toe",
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

/// Home Page
class MyHomePage extends StatefulWidget {
  ///
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          3,
          (y) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              3,
              (x) => InkWell(
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: const Color(0xAA121212),
                    border: Border.all(color: Colors.red),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

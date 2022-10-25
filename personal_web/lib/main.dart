import 'package:flutter/material.dart';
import 'dart:js' as js;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alberto Sandino',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Personal Web'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;
  final String nombre = 'Alberto Sandino Hernández';

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;

    if (currentWidth > 1800) {
      return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.only(
              left: 250.0, right: 250.0, top: 100.0, bottom: 150.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Alberto\nSandino\nHernández',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Expanded(
                    flex: 5,
                    child: SizedBox(
                      width: 100.0,
                    ),
                  ),
                  const Expanded(
                    child: SizedBox(
                      width: 10.0,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => js.context.callMethod(
                        'open', ['mailto:albertosandinohdez@gmail.com']),
                    child: const Text(
                      'Contact',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  const Expanded(
                    child: SizedBox(
                      width: 80.0,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => js.context.callMethod(
                        'open', ['https://www.linkedin.com/in/alsandino/']),
                    child: const Text(
                      'Linkedin',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 120.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 5,
                    child: Column(
                      children: [
                        const SelectableText(
                          'FLUTTER DEVELOPER',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 100.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SelectableText(
                          style: TextStyle(
                            fontSize: 18.0,
                          ),
                          'Flutter developer based in Spain with experience developing and designing multiplatform applications in different programming languages; mainly Dart, Java and C#, in conjunction with Firebase, SQL and REST APIs.',
                        ),
                      ],
                    ),
                  ),
                  const Expanded(
                      child: SizedBox(
                    width: 20.0,
                  )),
                  Expanded(
                    flex: 6,
                    child: Image.asset(
                      'images/screenmix.png',
                      scale: 1.5,
                      width: 750.0,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    } else if (currentWidth > 480) {
      return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.only(
              left: 50.0, right: 50.0, top: 70.0, bottom: 10.0),
          child: ListView(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Alberto\nSandino\nHernández',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Expanded(
                    child: SizedBox(
                      width: 100.0,
                    ),
                  ),
                  const Expanded(
                    child: SizedBox(
                      width: 10.0,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => js.context.callMethod(
                        'open', ['mailto:albertosandinohdez@gmail.com']),
                    child: const Text(
                      'Contact',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  const Expanded(
                    child: SizedBox(
                      width: 80.0,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => js.context.callMethod(
                        'open', ['https://www.linkedin.com/in/alsandino/']),
                    child: const Text(
                      'Linkedin',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 60.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      const Text(
                        'FLUTTER DEVELOPER',
                        style: TextStyle(
                          fontSize: 60.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      const Text(
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                        'Flutter developer based in Spain with experience developing and designing multiplatform applications in different programming languages; mainly Dart, Java and C#, in conjunction with Firebase, SQL and REST APIs.',
                      ),
                      const SizedBox(
                        height: 55.0,
                      ),
                      Image.asset('images/screenmix.png'),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    } else {
      return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.only(
              left: 50.0, right: 50.0, top: 30.0, bottom: 10.0),
          child: ListView(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Alberto\nSandino\nHernández',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Expanded(
                    child: SizedBox(
                      width: 100.0,
                    ),
                  ),
                  const Expanded(
                    child: SizedBox(
                      width: 10.0,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => js.context.callMethod(
                        'open', ['mailto:albertosandinohdez@gmail.com']),
                    child: const Text(
                      'Contact',
                      style: TextStyle(
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                  const Expanded(
                    child: SizedBox(
                      width: 80.0,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => js.context.callMethod(
                        'open', ['https://www.linkedin.com/in/alsandino/']),
                    child: const Text(
                      'Linkedin',
                      style: TextStyle(
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      const Text(
                        'FLUTTER DEVELOPER',
                        style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      const Text(
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                        'Flutter developer based in Spain with experience developing and designing multiplatform applications in different programming languages; mainly Dart, Java and C#, in conjunction with Firebase, SQL and REST APIs.',
                      ),
                      const SizedBox(
                        height: 55.0,
                      ),
                      Image.asset('images/screenmix.png'),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    }
  }
}

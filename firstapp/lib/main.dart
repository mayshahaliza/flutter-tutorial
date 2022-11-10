import 'package:firstapp/form.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
    const MyApp({super.key});

    @override
    Widget build(BuildContext context) {
        return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(),
        );
    }
}

class MyHomePage extends StatefulWidget {
    const MyHomePage({super.key});

    final String title = 'Flutter Demo Home Page';

    @override
    State<MyHomePage> createState() => _MyHomePageState();
}

Widget build(BuildContext context) {
    return Scaffold(appBar: MyApp,
        appBar: AppBar(
            title: Text(widget.title),
        ),
        // Menambahkan drawer menu
        drawer: Drawer(
            child: Column(
                children: [
                // Menambahkan clickable menu
                    ListTile(
                        title: const Text('Counter'),
                        onTap: () {
                            // Route menu ke halaman utama
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) => const MyHomePage()),
                            );
                        },
                    ),
                    ListTile(
                      title: const Text('Form'),
                      onTap: () {
                        // Route menu ke halaman form
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => const MyFormPage()),
                        );
                      },
                    ),
                ],
            ),
        ),
        body: Center(),
    );
}

import 'package:firstapp/page/form.dart';
import 'package:firstapp/main.dart';
import 'package:firstapp/page/to_do_page.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

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

class _MyHomePageState extends State<MyHomePage> {

Widget build(BuildContext context) {
    return Scaffold(
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
                    ListTile(
                        title: const Text('To Do'),
                        onTap: () {
                            // Route menu ke halaman to do
                            Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => const ToDoPage()),
                            );
                        },
                    ),
                ],
            ),
        ),
        body: Center(),
    );
}
}
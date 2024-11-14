import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.amber,
        ).copyWith(
          secondary: Colors.blue, // Cor de destaque
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue, // Cor do ElevatedButton
          ),
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.blue, // Cor do FloatingActionButton
        ),
      ),
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text(
              'Tarefas:',
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: ListView(
            children: [
              Task('Andar de Patins'),
              Task('Estudar programação'),
              Task('Meditar'),
              Task('Meditar'),
              Task('Meditar'),
              Task('Meditar'),
              Task('Meditar'),
              Task('Meditar'),
              Task('Meditar'),
              Task('Meditar'),
              Task('Meditar'),
              Task('Meditar'),
              Task('Meditar'),
              Task('Meditar'),
            ],
          ),
          floatingActionButton: FloatingActionButton(onPressed: () {})),
    );
  }
}

class Task extends StatelessWidget {
  final String nome;
  const Task(this.nome, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            child: Stack(children: [
          Container(color: Colors.blue, height: 140),
          Container(
              color: Colors.white,
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    color: Colors.black26,
                    width: 72,
                    height: 100,
                  ),
                  Text(nome),
                  ElevatedButton(
                      onPressed: () {}, child: Icon(Icons.arrow_drop_up))
                ],
              )),
        ])));
  }
}

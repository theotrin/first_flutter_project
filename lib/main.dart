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
            leading: Container(),
            title: Text(
              'Tarefas:',
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: ListView(
            children: [
              Task('Andar de Patins',
                  'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large'),
              Task('Andar de Patins',
                  'https://cdn.creazilla.com/cliparts/63407/roller-skating-clipart-md.png'),
              Task('Ler',
                  'https://thebogotapost.com/wp-content/uploads/2017/06/636052464065850579-137719760_flyer-image-1.jpg'),
              Task('Meditar',
                  'https://manhattanmentalhealthcounseling.com/wp-content/uploads/2019/06/Top-5-Scientific-Findings-on-MeditationMindfulness-881x710.jpeg'),
              Task('Jogar',
                  'https://i.ibb.co/tB29PZB/kako-epifania-2022-2-c-pia.jpg'),
            ],
          ),
          floatingActionButton: FloatingActionButton(onPressed: () {})),
    );
  }
}

class Task extends StatefulWidget {
  final String nome;
  final String imageUrl;
  const Task(this.nome, this.imageUrl, {super.key});

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int nivel = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            child: Stack(children: [
          Container(color: Colors.blue, height: 140),
          Column(
            children: [
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
                        child:
                            Image.network(widget.imageUrl, fit: BoxFit.cover),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 200,
                            child: Text(
                              widget.nome,
                              style: TextStyle(
                                  fontSize: 24,
                                  overflow: TextOverflow.ellipsis),
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                size: 15,
                                color: Colors.blue,
                              ),
                              Icon(
                                Icons.star,
                                size: 15,
                                color: Colors.blue,
                              ),
                              Icon(
                                Icons.star,
                                size: 15,
                                color: Colors.blue,
                              ),
                              Icon(
                                Icons.star,
                                size: 15,
                                color: Colors.blue,
                              ),
                              Icon(
                                Icons.star,
                                size: 15,
                                color: Colors.blue,
                              ),
                            ],
                          )
                        ],
                      ),
                      Container(
                        height: 64,
                        width: 64,
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                nivel++;
                              });
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.arrow_drop_up,
                                  color: Colors.white,
                                ),
                                Text("UP",
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.white))
                              ],
                            )),
                      )
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 200,
                      child: LinearProgressIndicator(
                        color: Colors.white,
                        value: nivel / 10,
                      ),
                    ),
                    Text('Nivel $nivel',
                        style: TextStyle(fontSize: 18, color: Colors.white))
                  ],
                ),
              )
            ],
          )
        ])));
  }
}

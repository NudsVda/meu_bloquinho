import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'utils.dart' as utils;

void main() {
  startMeUp() async {
    Directory docsDir = await getApplicationDocumentsDirectory();
    utils.docsDir = docsDir;
    runApp(MeuBloquinho());
  }
  startMeUp();
}

class MeuBloquinho extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Meu Bloquinho"),
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.date_range),text: "Lembretes"),
                Tab(icon: Icon(Icons.contacts),text: "Contatos"),
                Tab(icon: Icon(Icons.note),text: "Notas"),
                Tab(icon: Icon(Icons.assignment_turned_in),text: "Tarefas"),
              ]
            ),
          ),
          body: TabBarView(
            children: [
              Lembretes(), Contatos(), Notes(), Tarefas()
            ],
          )
        ),
      )
    );
  }
}
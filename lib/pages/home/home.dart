import 'package:flutter/material.dart';
import 'package:guia_de_tarefas/pages/home/components/card_tarefa.dart';
import 'package:guia_de_tarefas/pages/nova_tarefa/nova_tarefa.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Guia de Tarefas'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => NovaTarefa()),
          );
        },
        child: Icon(
          Icons.add,
          size: 36.0,
        ),
      ),
      body: Column(
        children: [
          CardTarefa(),
        ],
      ),
    );
  }
}

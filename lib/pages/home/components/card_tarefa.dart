import 'package:flutter/material.dart';
import 'package:guia_de_tarefas/pages/nova_tarefa/modelos/tarefa.dart';

import '../../nova_tarefa/tarefas.dart';

class CardTarefa extends StatelessWidget {
  final Tarefa tarefa;
  final Tarefas tarefas;

  const CardTarefa({
    Key? key,
    required this.tarefa,
    required this.tarefas,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      margin: const EdgeInsets.all(8.0),
      elevation: 1.2,
      child: Container(
        width: double.maxFinite,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(tarefa.titulo ?? ''),
            ),
            Text('Descrição: ${tarefa.descricao ?? ''}'),
            Text('Data: ${tarefas.formatadorDeData.format(tarefa.data!)}'),
            Text('Hora: ${tarefa.hora!.format(context)}'),
          ],
        ),
      ),
    );
  }
}

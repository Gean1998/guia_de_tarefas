import 'package:intl/intl.dart';

import 'modelos/tarefa.dart';

class Tarefas {
  final formatadorDeData = DateFormat('dd/MM/yyyy');

  List<Tarefa> tarefas = [];

  void adicionarTarefa(Tarefa tarefa) {
    tarefas.add(tarefa);
  }

  void removerTarefa(Tarefa tarefa) {
    tarefas.remove(tarefa);
  }
}

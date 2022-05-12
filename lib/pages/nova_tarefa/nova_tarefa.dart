import 'package:flutter/material.dart';
import 'package:guia_de_tarefas/pages/nova_tarefa/modelos/tarefa.dart';
import 'package:guia_de_tarefas/pages/nova_tarefa/tarefas.dart';

class NovaTarefa extends StatefulWidget {
  final Tarefas tarefas;

  const NovaTarefa({
    Key? key,
    required this.tarefas,
  }) : super(key: key);

  @override
  State<NovaTarefa> createState() => _NovaTarefaState();
}

class _NovaTarefaState extends State<NovaTarefa> {
  var data = DateTime.now();
  var hora = TimeOfDay.now();

  TextEditingController tituloController = TextEditingController(text: '');
  TextEditingController descricaoController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nova Tarefa'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: tituloController,
              decoration: InputDecoration(
                hintText: 'Digite o título...',
                label: Text('Título'),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: descricaoController,
              decoration: InputDecoration(
                hintText: 'Digite o descrição...',
                label: Text('Descrição'),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                IconButton(
                  onPressed: () async {
                    final dataEscolhida = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2022),
                      lastDate: DateTime(2030),
                    );

                    if (dataEscolhida != null) {
                      setState(() {
                        data = dataEscolhida;
                      });
                    }
                  },
                  icon: Icon(Icons.date_range),
                ),
                Text(widget.tarefas.formatadorDeData.format(data)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                IconButton(
                  onPressed: () async {
                    final horaEscolhida = await showTimePicker(
                      context: context,
                      initialTime: hora,
                    );

                    if (horaEscolhida != null) {
                      setState(() {
                        hora = horaEscolhida;
                      });
                    }
                  },
                  icon: Icon(Icons.alarm),
                ),
                Text(hora.format(context)),
              ],
            ),
          ),
          Container(
            width: 150,
            height: 30,
            child: ElevatedButton(
              onPressed: () {
                var tarefa = Tarefa(
                  titulo: tituloController.text,
                  descricao: descricaoController.text,
                  data: data,
                  hora: hora,
                );
                widget.tarefas.adicionarTarefa(tarefa);
              },
              child: Text('Salvar'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith(
                  (states) => Colors.purple,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

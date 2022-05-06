import 'package:flutter/material.dart';
import 'package:guia_de_tarefas/pages/nova_tarefa/tarefas.dart';

class NovaTarefa extends StatefulWidget {
  const NovaTarefa({Key? key}) : super(key: key);

  @override
  State<NovaTarefa> createState() => _NovaTarefaState();
}

class _NovaTarefaState extends State<NovaTarefa> {
  var tarefas = Tarefas();

  var data = DateTime.now();
  var hora = TimeOfDay.now();

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
                Text(tarefas.formatadorDeData.format(data)),
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
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Tarefa {
  Tarefa({
    this.titulo,
    this.descricao,
    this.data,
    this.hora,
  });

  String? titulo;
  String? descricao;
  DateTime? data;
  TimeOfDay? hora;
}

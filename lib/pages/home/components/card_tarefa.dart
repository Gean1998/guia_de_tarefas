import 'package:flutter/material.dart';

class CardTarefa extends StatelessWidget {
  const CardTarefa({Key? key}) : super(key: key);

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
              child: Text('Titulo'),
            ),
            Text('Descrição'),
            Text('Data'),
            Text('Hora'),
          ],
        ),
      ),
    );
  }
}

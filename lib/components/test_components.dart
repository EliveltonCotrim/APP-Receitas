import 'package:flutter/material.dart';

class TesteComponent extends StatelessWidget {
  final String data;

  TesteComponent(this.data);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => print('Clicou'),
      child: Container(
        width: 100,
        height: 100,
        color: Colors.red,
        margin: EdgeInsets.all(10),
        child: Center(
          child: Text(
            data,
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ),
    );
  }
}

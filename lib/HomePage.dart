import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'Garagens.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
          backgroundColor: Colors.black87,
          elevation: 0,
          title: Row(
            children: [
              Container(
                  height: 45,
                  width: 45,
                  child: ClipRRect(borderRadius: BorderRadius.circular(10)))
            ],
          )),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
            padding: const EdgeInsets.all(15),
            child: const Text('Garagens',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ))),
        Expanded(
          child: Garagens(),
        )
      ]),
    );
  }


}

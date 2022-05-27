import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../models/garagens.dart';

class DatailPage extends StatelessWidget {
  final Garagem garagem;

  DatailPage(this.garagem);
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text('Detalhes')));
  }
}

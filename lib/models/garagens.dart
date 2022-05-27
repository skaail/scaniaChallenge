import 'package:flutter/material.dart';

class Garagem {
  IconData? iconData;
  String? title;
  Color? bgColor;
  Color? iconColor;
  Color? btnColor;

  num? left;
  num? done;

  Garagem(
      {this.iconData,
      this.title,
      this.bgColor,
      this.iconColor,
      this.done,
      this.left,
      this.btnColor});
  static List<Garagem> generateGaragem() {
    return [
      Garagem(
          iconData: Icons.fire_truck,
          title: 'Liberdade',
          bgColor:Colors.green,
          iconColor: Colors.white,
          btnColor: Colors.lightGreen,
          left: 50,
          done: 15),
      Garagem(
          iconData: Icons.fire_truck,
          title: 'Sé',
          bgColor:Colors.green,
          iconColor: Colors.white,
          btnColor: Colors.lightGreen,
          left: 50,
          done: 35),
      Garagem(
          iconData: Icons.fire_truck,
          title: 'Marginal',
          bgColor:Colors.green,
          iconColor: Colors.white,
          btnColor: Colors.lightGreen,
          left: 100,
          done: 45)
    ];
  }
}

import 'package:challenge/detail/detail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:challenge/models/garagens.dart';

class Garagens extends StatelessWidget {
  final garagemList = Garagem.generateGaragem();

  Garagens({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
          itemCount: garagemList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
          itemBuilder: (context, index) =>
              _buildGaragem(context, garagemList[index])),
    );
  }

  Widget _buildGaragem(BuildContext context, Garagem garagem) {
    return GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder:
            (context) => DatailPage(garagem))
          );
        },
        child: Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: garagem.bgColor, borderRadius: BorderRadius.circular(20)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                garagem.iconData,
                color: garagem.iconColor,
                size: 25,
              ),
              const SizedBox(height: 30),
              Text(garagem.title!,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Row(children: [
                _buildGaragemStatus(garagem.btnColor!, garagem.iconColor!,
                    '${garagem.left} vagas'),
                const SizedBox(width: 5),
                _buildGaragemStatus(
                    Colors.blue, garagem.iconColor!, '${garagem.left} vagas')
              ])
            ],
          ),
        ));
  }

  Widget _buildGaragemStatus(Color bgColor, Color txColor, String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      decoration: BoxDecoration(
          color: bgColor, borderRadius: BorderRadius.circular(20)),
      child: Text(
        text,
        style: TextStyle(color: txColor),
      ),
    );
  }
}

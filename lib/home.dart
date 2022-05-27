import 'package:challenge/AddPage.dart';
import 'package:challenge/HomePage.dart';
import 'package:challenge/Profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int paginaAtual = 0;
  late PageController pc;

  void initState() {
    super.initState();
    pc = PageController(initialPage: paginaAtual);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(controller: pc, children: [HomePage(), AddPage(), Profile()]),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: paginaAtual,
          items: const [
            BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
            BottomNavigationBarItem(label: 'Add', icon: Icon(Icons.add)),
            BottomNavigationBarItem(label: 'Profile', icon: Icon(Icons.person))
          ],

          onTap: (pagina){
            pc.animateToPage(pagina, duration: const Duration(milliseconds: 5), curve: Curves.ease);
          },

        ),);
  }
}

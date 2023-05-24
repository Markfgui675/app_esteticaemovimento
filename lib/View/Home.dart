import 'package:app_esteticaemovimento/View/Mobile/mobile.dart';
import 'package:app_esteticaemovimento/View/Tablets/tablets.dart';
import 'package:app_esteticaemovimento/View/Web/web.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {

    var width_tela = MediaQuery.of(context).size.width;
    print(width_tela);

    if(width_tela > 768){
      return Web();
    } else if (width_tela <= 768 && width_tela > 414){
      return Tablets();
    } else if(width_tela <= 414){
      return Mobile();
    } else {
      return Container();
    }
  }
}


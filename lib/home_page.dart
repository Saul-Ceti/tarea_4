import 'dart:convert';

import 'package:apunter/cripto_list.dart';
import 'package:apunter/data/constants.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {  
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<dynamic> criptos = [];

  @override
  void initState() {    
    criptos = jsonDecode(CRYPTO_EXCHANGES);
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: CryptoList(criptos: criptos),
    );
  }
}


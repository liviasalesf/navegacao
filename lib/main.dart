
import 'package:flutter/material.dart';
import 'package:navegacao/telas/tela_categorias.dart';
import 'package:navegacao/telas/tela_produto.dart';
import 'package:navegacao/utils/rotas.dart';

void main() {
  runApp( MeuCardapio());
}

class MeuCardapio extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Cardapio",
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
     //home: TelasCategorias(),
      routes: { 
        Rotas.HOME: (ctx) => TelasCategorias(),
        Rotas.PRODUTO: (ctx) => TelaProduto()
      }
    );
  }
}

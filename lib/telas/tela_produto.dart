import 'package:flutter/material.dart';
import 'package:navegacao/models/categorias.dart';


class TelaProduto extends StatelessWidget {
  

  //Exemplo de lista de pratos relacionados à categoria
  List<Prato> pratosDaCategoria = [
    Prato("Prato 1", "Descrição do Prato 1"),
    Prato("Prato 2", "Descrição do Prato 2"),
    Prato("Prato 3", "Descrição do Prato 3"),
  ];

  @override
  Widget build(BuildContext context) {

    final categoria= ModalRoute.of(context)?.settings.arguments as Categoria;

    return Scaffold(
      appBar: AppBar(
        title: Text("Tela Produtos"),
      ),
      body: Column(
        children: [
          Text("A categoria escolhida foi ${categoria.titulo}"),
          Expanded(
            child: ListView.builder(
              itemCount: pratosDaCategoria.length,
              itemBuilder: (ctx, index) {
                return Card(
                  child: ListTile(
                    title: Text(pratosDaCategoria[index].nome),
                    subtitle: Text(pratosDaCategoria[index].descricao),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

// Modelo de Prato (substitua pelas suas classes/modelos reais)
class Prato {
  final String nome;
  final String descricao;
  
  Prato(this.nome, this.descricao);
}
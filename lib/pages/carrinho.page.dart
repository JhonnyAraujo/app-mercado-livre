import 'package:app_mercado_livre/store/carrinho.store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class CarrinhoPage extends StatelessWidget {
  const CarrinhoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Carrinho de compras"),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      body: Observer(
        builder: (_) {
          return ListView.builder(
            itemCount: carrinhoStoreGlobal.quantidadeProdutos,
            itemBuilder: (context, index) {
              return Text(
                "${carrinhoStoreGlobal.listaCarrinho[index].titulo} - ${carrinhoStoreGlobal.listaCarrinho[index].preco}",
              );
            },
          );
        },
      ),
    );
  }
}

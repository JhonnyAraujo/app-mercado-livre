import 'package:app_mercado_livre/store/carrinho.store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class CarrinhoPage extends StatelessWidget {
  const CarrinhoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          key: const Key("backBtn"),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text("Carrinho de compras"),
        centerTitle: true,
        backgroundColor: Colors.yellow,
        shadowColor: Colors.black,
        elevation: 2,
      ),
      body: Observer(
        builder: (_) {
          return carrinhoStoreGlobal.quantidadeProdutos == 0
              ? Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        key: const Key("imageCart"),
                        "assets/images/empty_cart.png",
                        width: 200,
                      ),
                    ],
                  ),
                )
              : ListView.builder(
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

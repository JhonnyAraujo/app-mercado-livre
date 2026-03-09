import 'package:app_mercado_livre/models/produto.model.dart';
import 'package:app_mercado_livre/widgets/card_produto.widget.dart';
import 'package:app_mercado_livre/widgets/filtro_resultados.widget.dart';
import 'package:app_mercado_livre/widgets/mercado_livre_appbar.widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: MercadoLivreAppBar(),
      ),
      body: Column(
        children: [
          const FiltroResultados(),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.only(top: 12),
              itemBuilder: (context, index) {
                index = index + 1;
                return CardProduto(
                  itemProduto: Produto(
                    titulo: "Apple Iphone 11 Pro (128gb) - Preto",
                    preco: (599.99 * index),
                    valorParcelas: (60.00 * index),
                    avaliacao: 5,
                  ),
                );
              },
              separatorBuilder: (context, _) {
                return const SizedBox(height: 12);
              },
              itemCount: 15,
            ),
          ),
        ],
      ),
    );
  }
}

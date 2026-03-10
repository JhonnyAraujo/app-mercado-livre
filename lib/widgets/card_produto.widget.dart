import 'package:app_mercado_livre/models/produto.model.dart';
import 'package:app_mercado_livre/store/carrinho.store.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter/material.dart';

class CardProduto extends StatelessWidget {
  final Produto itemProduto;

  const CardProduto({super.key, required this.itemProduto});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      padding: const EdgeInsets.all(12),
      decoration: const BoxDecoration(
        color: Colors.white,

        boxShadow: [
          BoxShadow(color: Colors.black26, offset: Offset(0, 1), blurRadius: 2),
        ],
      ),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[200], // Fundo cinza suave
            ),
            child: Image.asset(
              "assets/images/iphone.png",
              width: 170,
              height: 240,
            ),
          ),

          const SizedBox(width: 10),
          // 2. Os Textos à Direita
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      itemProduto.titulo,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 8),

                    Text(
                      "R\$ ${itemProduto.preco}",
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    RichText(
                      text: TextSpan(
                        text: "em ",
                        style: const TextStyle(color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                            text:
                                "10x R\$ ${itemProduto.valorParcelas} sem juros",
                            style: const TextStyle(color: Colors.green),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 4),

                    const Text(
                      "Frete grátis",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const Text(
                      "Disponível em 6 cores",
                      style: TextStyle(fontSize: 12, color: Colors.black54),
                    ),

                    const SizedBox(height: 8),

                    RatingBar.builder(
                      initialRating: itemProduto.avaliacao,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 16,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
                      itemBuilder: (context, _) =>
                          const Icon(Icons.star, color: Colors.blue),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                  ],
                ),

                Align(
                  alignment: Alignment.bottomRight,
                  child: TextButton(
                    onPressed: () {
                      final deuCerto = carrinhoStoreGlobal.adicionarPrdouto(
                        itemProduto,
                      );

                      if (deuCerto) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(
                              "Produto adicionado!",
                              style: TextStyle(color: Colors.black),
                            ),
                            backgroundColor: Colors.yellow,
                            showCloseIcon: true,
                            closeIconColor: Colors.black,
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(
                              "Produto não adicionado!",
                              style: TextStyle(color: Colors.black),
                            ),
                            backgroundColor: Colors.red,
                            showCloseIcon: true,
                            closeIconColor: Colors.black,
                          ),
                        );
                      }
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      minimumSize: Size.zero, // Arranca as gorduras
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    child: const Text(
                      "Add carrinho",
                      style: TextStyle(color: Colors.blue, fontSize: 13),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

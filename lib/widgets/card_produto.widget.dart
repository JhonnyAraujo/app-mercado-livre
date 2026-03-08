import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter/material.dart';

class CardProduto extends StatelessWidget {
  const CardProduto({super.key});

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
                    const Text(
                      "Apple Iphone 11 Pro (128gb) - Preto",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 8),

                    const Text(
                      "R\$ 599,99",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    RichText(
                      text: const TextSpan(
                        text: "em ",
                        style: TextStyle(color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                            text: "10x R\$ 60,00 sem juros",
                            style: TextStyle(color: Colors.green),
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
                      initialRating: 5,
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
                    onPressed: () {},
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

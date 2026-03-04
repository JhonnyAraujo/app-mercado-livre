import 'package:flutter/material.dart';

class MercadoLivreAppBar extends StatelessWidget {
  const MercadoLivreAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.yellow,
      toolbarHeight: 100,
      title: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    prefixIconColor: Colors.black45,
                    hintText: "Buscar no Mercado Livre",
                    hintStyle: const TextStyle(color: Colors.black45),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: const EdgeInsets.symmetric(vertical: 10),
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Badge(
                  label: Text("0"),
                  child: Icon(Icons.shopping_cart_outlined),
                ),
              ),
            ],
          ),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              foregroundColor: Colors.black,
              padding: EdgeInsets.zero,
            ),
            child: const Row(
              children: [
                Icon(Icons.pin_drop_outlined),
                SizedBox(width: 10),
                Text("Informe o seu cep"),
                SizedBox(width: 10),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

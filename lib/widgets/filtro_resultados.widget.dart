import 'package:flutter/material.dart';

class FiltroResultados extends StatelessWidget {
  const FiltroResultados({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black26, offset: Offset(0, 1), blurRadius: 4),
        ],
      ),
      child: Row(
        children: [
          const Text("15 resultados", style: TextStyle(color: Colors.black54)),
          const Spacer(),
          TextButton.icon(
            onPressed: () {},
            label: const Text("Filtrar (2)"),
            style: TextButton.styleFrom(
              foregroundColor: Colors.blue,
              padding: EdgeInsets.zero,
            ),
            icon: const Icon(Icons.keyboard_arrow_down, size: 24),
            iconAlignment: IconAlignment.end,
          ),
        ],
      ),
    );
  }
}

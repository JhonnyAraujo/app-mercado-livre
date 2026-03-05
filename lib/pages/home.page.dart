import 'package:app_mercado_livre/widgets/filtro_resultados.widget.dart';
import 'package:app_mercado_livre/widgets/mercado_livre_appbar.widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: MercadoLivreAppBar(),
      ),
      body: Column(children: [FiltroResultados()]),
    );
  }
}

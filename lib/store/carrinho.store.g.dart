// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'carrinho.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CarrinhoStore on _CarrinhoStoreBase, Store {
  Computed<int>? _$quantidadeProdutosComputed;

  @override
  int get quantidadeProdutos => (_$quantidadeProdutosComputed ??= Computed<int>(
    () => super.quantidadeProdutos,
    name: '_CarrinhoStoreBase.quantidadeProdutos',
  )).value;

  late final _$listaCarrinhoAtom = Atom(
    name: '_CarrinhoStoreBase.listaCarrinho',
    context: context,
  );

  @override
  ObservableList<Produto> get listaCarrinho {
    _$listaCarrinhoAtom.reportRead();
    return super.listaCarrinho;
  }

  @override
  set listaCarrinho(ObservableList<Produto> value) {
    _$listaCarrinhoAtom.reportWrite(value, super.listaCarrinho, () {
      super.listaCarrinho = value;
    });
  }

  late final _$_CarrinhoStoreBaseActionController = ActionController(
    name: '_CarrinhoStoreBase',
    context: context,
  );

  @override
  void adicionarPrdouto(Produto novoProduto) {
    final _$actionInfo = _$_CarrinhoStoreBaseActionController.startAction(
      name: '_CarrinhoStoreBase.adicionarPrdouto',
    );
    try {
      return super.adicionarPrdouto(novoProduto);
    } finally {
      _$_CarrinhoStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
listaCarrinho: ${listaCarrinho},
quantidadeProdutos: ${quantidadeProdutos}
    ''';
  }
}

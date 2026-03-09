import 'package:app_mercado_livre/models/produto.model.dart';
import 'package:mobx/mobx.dart';
part 'carrinho.store.g.dart';

class CarrinhoStore = _CarrinhoStoreBase with _$CarrinhoStore;

abstract class _CarrinhoStoreBase with Store {
  @observable
  ObservableList<Produto> listaCarrinho = ObservableList<Produto>();

  @action
  void adicionarPrdouto(Produto novoProduto) {
    listaCarrinho.add(novoProduto);
  }

  @computed
  int get quantidadeProdutos => listaCarrinho.length;
}

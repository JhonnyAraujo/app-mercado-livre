import 'package:app_mercado_livre/models/produto.model.dart';
import 'package:mobx/mobx.dart';
part 'carrinho.store.g.dart';

class CarrinhoStore = _CarrinhoStoreBase with _$CarrinhoStore;

abstract class _CarrinhoStoreBase with Store {
  @observable
  ObservableList<Produto> listaCarrinho = ObservableList<Produto>();

  @action
  bool adicionarPrdouto(Produto novoProduto) {
    bool jaExiste = listaCarrinho.any(
      (produto) => produto.preco == novoProduto.preco,
    );
    if (jaExiste) {
      return false;
    }

    listaCarrinho.add(novoProduto);
    return true;
  }

  @computed
  int get quantidadeProdutos => listaCarrinho.length;
}

final carrinhoStoreGlobal = CarrinhoStore();

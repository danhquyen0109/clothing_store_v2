import 'package:store_v2/model/cart/cart_db.dart';
import 'package:store_v2/view/pages/product/product.dart';

CartDB cartDB = CartDB.instance;

void saveProduct(Product product) async {
  bool exist = await cartDB.existProduct(product.name);
  if (exist) {
    // Case 1: Update operation
    await cartDB.updateProduct(product);
  } else {
    // Case 2: Insert Operation
    await cartDB.insertProduct(product);
  }
}

void productInsert(Product product) async =>
    await cartDB.insertProduct(product);
void productUpdate(Product product) async =>
    await cartDB.updateProduct(product);
void deleteProduct(String name) async => await cartDB.deleteProduct(name);

Future<List<Product>> getListProducts() async {
  return await cartDB.getProducts();
}

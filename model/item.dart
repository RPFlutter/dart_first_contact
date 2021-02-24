import 'produtc.dart';

class Item {
  
  late Product _product;
  late int _quantity;
  double _price = 0.0;

  Item({product, quantity = 1}) {
    _price = product.price;
    _product = product;
    _quantity = quantity;
  }

  Product get product => _product;
  void set product(Product newProduct) => _product = newProduct; 

  int get quantity => _quantity;
  void set quantity(int value) => _quantity = value;

  // get keyword doesn't allow parameters
  double getPrice(bool hasDiscount) => hasDiscount ? _product.priceWithDiscount : _price; 
  void set price(double newPrice) => _price = newPrice;
}

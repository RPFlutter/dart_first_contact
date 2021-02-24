import 'produtc.dart';

class Item {
  Product product;
  int quantity;
  double _price = 0.0;

  Item({required this.product, this.quantity = 1}) {
    _price = product.price;
  }

  double getPrice(bool hasDiscount) {
    return hasDiscount ? product.priceWithDiscount : _price;
  }

  void set price(double newPrice) => _price = newPrice;
}

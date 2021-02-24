class Product {
  late int _code;
  late String _name;
  late double _price;
  late double _discount;

  Product({code, name, price, discount = 0.0}){
    _code = code;
    _name = name;
    _price = price;
    _discount = discount;
  }

  int get code => _code;
  set code(int newName) => _code = newName;

  String get name => _name;
  set name(String newName) => _name = newName;

  double get price => _price;
  set price(double newPrice) => _price = newPrice;

  void set discount(double discountValue) => _discount = (discountValue < 1) ? discountValue : _discount;
  double get discount => _discount;

  double get priceWithDiscount => _price * (1 - _discount);

      
}

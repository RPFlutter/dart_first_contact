class Product {
  int code;
  String name;
  double price;
  double _discount = 0;

  Product(
      {required this.code,
      required this.name,
      required this.price,
      double discount = 0}) {
    _setDiscount(discount);
  }

  void set discount(double discountValue) => _setDiscount(discountValue);
  double get discount => _discount;

  double get priceWithDiscount => price * (1 - _discount);

  void _setDiscount(double discountValue) =>
      _discount = (discountValue < 1) ? discountValue : _discount;
}

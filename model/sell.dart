import 'customer.dart';
import 'item.dart';

class Sell {
  Customer customer;
  List<Item> items;

  Sell({required this.customer, required this.items});

  double get totalValue {
    return items
        .map((item) => item.getPrice(customer.hasFidelityCard) * item.quantity)
        .reduce((amount, itemPrice) => amount + itemPrice);
  }
}

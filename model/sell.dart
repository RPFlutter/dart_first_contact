import 'customer.dart';
import 'item.dart';

class Sell {
  
  late Customer _customer;
  late List<Item> _items;

  Sell({customer, items}){
    _customer = customer;
    _items = items;
  }

  List <Item> get items => _items;
  void set items(List <Item> newItems) => _items = newItems;

  Customer get customer => _customer;
  void set customer(Customer newCustomer) => _customer = customer;

  double get totalValue {
    return items
        .map((item) => item.getPrice(customer.hasFidelityCard) * item.quantity)
        .reduce((amount, itemPrice) => amount + itemPrice);
  }
}

/**
 *  Creates a sale to a customer, containing three items.
 *  Then prints out the customer info and the sell total price
 */

import 'model/customer.dart';
import 'model/produtc.dart';
import 'model/sell.dart';
import 'model/item.dart';

main() {
  var sell = Sell(
      customer: Customer(
          name: "John Doe",
          socialSecurityNumber: '000-00-0000',
          hasFidelityCard: true),
      items: [
        Item(
          quantity: 10,
          product: Product(
            code: 12, 
            name: 'pen', 
            price: 1.50, 
            discount: 0.05),
        ),
        Item(
          quantity: 20,
          product: Product(
            code: 12, 
            name: 'pencil', 
            price: 0.50),
        ),
        Item(
          quantity: 2,
          product:
              Product(
                code: 12, 
                name: 'copyBook', 
                price: 10.00, 
                discount: 0.1),
        )
      ]);

  printSellCustomer(sell);

  print('Total price: US\$ ${sell.totalValue}');
}

void printSellCustomer(Sell sell) {
  print('Name: ${sell.customer.name}');
  print('Social Security Number: ${sell.customer.socialSecurityNumber}');
  print('Gold Client: ${(sell.customer.hasFidelityCard) ? 'Yes' : 'No'}');
}

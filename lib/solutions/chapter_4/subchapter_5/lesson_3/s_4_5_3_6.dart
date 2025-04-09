import 'package:flutter/material.dart';

class Product {
  final String name;
  final double price;
  final IconData icon;

  Product({required this.name, required this.price, required this.icon});
}

List<Product> productList = [
  Product(icon: Icons.tv, name: 'Fernseher', price: 279.95),
  Product(icon: Icons.laptop_mac, name: 'Monitor', price: 169.99),
  Product(icon: Icons.microwave, name: 'Mikrowelle', price: 129.99),
  Product(icon: Icons.kitchen, name: 'Kühlschrank', price: 532.61),
  Product(icon: Icons.microwave, name: 'Backofen', price: 349.99),
];

class S4536 extends StatelessWidget {
  const S4536({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: productList.length,
      itemBuilder: (context, index) {
        Product currentProduct = productList[index];
        return Card(
            color: const Color.fromARGB(255, 176, 238, 192),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: ListTile(
                leading: Icon(currentProduct.icon),
                title: Text(currentProduct.name),
                subtitle: Text(currentProduct.price.toString()),
                trailing: Icon(Icons.shopping_cart_rounded),
              ),
            ));
      },
      separatorBuilder: (context, index) => SizedBox(
        height: 20,
      ),
    );
  }
}

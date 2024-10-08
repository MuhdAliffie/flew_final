import 'package:flew_final/headers/drawer/drawer_menu.dart';
import 'package:flew_final/headers/market/products.dart';
import 'package:flew_final/headers/market/product_card.dart';
import 'package:flew_final/headers/model/appbar_model.dart';
import 'package:flutter/material.dart';

class MarketPage extends StatelessWidget {
  const MarketPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppbarModel(
        title: 'Market',
      ),
      drawer: const Drawer(
        child: CustomDrawer(),
      ),
      body: Column(
        children: [
          // Carousel
          SizedBox(
            height: 200.0,
            child: PageView(
              children: [
                Image.asset('assets/images/DJICamera.png', fit: BoxFit.cover),
                Image.asset('assets/images/DJIMatrices.jpg', fit: BoxFit.cover),
                Image.asset('assets/images/DJIAgriculture.png',
                    fit: BoxFit.cover),
              ],
            ),
          ),
          // Search bar
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: 'Search',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
          // GridView for products
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(16.0),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 16.0,
                childAspectRatio: 0.75,
              ),
              itemCount: products.length, // Use the length of the products list
              itemBuilder: (context, index) {
                final product = products[index];
                return ProductCard(
                  imagePath: product['imagePath']!, // Access the image path
                  productName:
                      product['productName']!, // Access the product name
                  price: product['price']!, // Access the price
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.new_releases),
            label: 'New',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store),
            label: 'Sell',
          ),
        ],
      ),
    );
  }
}

// ignore_for_file: prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            child: const Text(
              "Fruits",
              style: TextStyle(fontSize: 25),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                getProductCard(),
                getProductCard(),
                getProductCard(),
                getProductCard(),
                getProductCard(),
              ],
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            child: const Text(
              "Vegetables",
              style: TextStyle(fontSize: 25),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                getProductCard(),
                getProductCard(),
                getProductCard(),
                getProductCard(),
                getProductCard(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

getProductCard() {
  return Card(
    color: Colors.white,
    shadowColor: Colors.grey.shade200,
    elevation: 5.0,
    child: SizedBox(
      height: 250,
      width: 180,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.network(
            "https://images.immediate.co.uk/production/volatile/sites/30/2017/01/Bunch-of-bananas-67e91d5.jpg",
            width: double.infinity,
            height: 200,
          ),
          const Text(
            "Banana",
            style: TextStyle(fontSize: 14),
          ),
          const Text(
            "Pkr: 220",
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    ),
  );
}

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _DashboardViewState createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    const HomeView(),
    CartView(),
    NotificationsView(),
    ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

CartView() {
}

NotificationsView() {
}

ProfileView() {
}
void main() {
  runApp(MaterialApp(
    home: const DashboardView(),
    routes: {
      '/productDetail': (context) => const ProductDetailView(), // Define the route
    },
  ));
}
class ProductDetailView extends StatelessWidget {
  const ProductDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Detail'),
      ),
      body: const Center(
        child: Text('Product Details Page Content'),
      ),
    );
  }
}
ProductCard(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.pushNamed(context, '/productDetail'); // Navigate to Product Detail Page
    },
    child: const Card(
      // ... (rest of your card widget)
    ),

  );
}
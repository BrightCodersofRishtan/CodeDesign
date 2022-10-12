import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:storeapp/model/models.dart';
import 'package:storeapp/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/home';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => const HomeScreen(),
    );
  }

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 1.CustomAppBar
      appBar: const CustomAppBar(title: "FullFlutter.uz"),

      // 2.CustomNavBar
      bottomNavigationBar: const CustomNavBar(),
      body: Column(
        children: [
          CarouselSlider(
              options: CarouselOptions(
                aspectRatio: 1.5,
                viewportFraction: 0.9,
                enlargeCenterPage: true,
                enlargeStrategy: CenterPageEnlargeStrategy.height,
              ),
              items: Category.categories
                  .map((category) => HeroCaruselCard(category: category))
                  .toList(),
                  ),
          // Product Card
          // ProductCard(product: Product.products[0],),
          const Expanded(child: SectionTitle(title: "RECOMMENDED")),
          ProductCarusel(
            products: Product.products
            .where((product) => product.isRecommended)
            .toList()),
          const Expanded(child: SectionTitle(title: "MOST POPULAR")),
          ProductCarusel(
            products: Product.products
            .where((product) => product.isPopular)
            .toList()),
        ],
      ),
    );
  }
}

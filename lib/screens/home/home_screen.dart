import 'dart:html';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:storeapp/model/category_model.dart';
import 'package:storeapp/model/models.dart';
import 'package:storeapp/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/home';

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => HomeScreen(),
    );
  }

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 1.CustomAppBar
      appBar: CustomAppBar(title: "FullFlutter.uz"),

      // 2.CustomNavBar
      bottomNavigationBar: CustomNavBar(),

      body: Column(
        children: [
          Container(
            child: CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 1.5,
                  viewportFraction: 0.9,
                  enlargeCenterPage: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                ),
                items: Category.categories
                    .map((category) => HeroCaruselCard(category: category))
                    .toList()),
          ),
          SectionTitle(title: "RECOMMENDED"),
          // Product Card
          ProductCard(product: Product.products[0],),
        ],
      ),
    );
  }
}

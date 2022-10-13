import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String name;
  final String category;
  final String imageUrl;
  final double price;
  final bool isRecommended;
  final bool isPopular;

  const Product(
      {required this.name,
      required this.category,
      required this.imageUrl,
      required this.price,
      required this.isRecommended,
      required this.isPopular});

  @override
  List<Object?> get props =>
      [
        name, 
        category, 
        imageUrl, 
        price, 
        isRecommended, 
        isPopular
        ];

  static List<Product> products = [
    const Product(
      name: "Soft Drink #1",
      category: 'Soft Drink',
      imageUrl: 'https://avatars.mds.yandex.net/i?id=e330f7491ebdc4918406e8c20079c532-5680887-images-thumbs&n=13&exp=1',
      price: 2.99,
      isRecommended: true,
      isPopular: true,
      ),
    const Product(
      name: "Soft Drink #2",
      category: 'Soft Drink',
      imageUrl: 'https://www.puremalt.com/hs-fs/hubfs/Website%20Resources/Media/Soft%20drinks%20and%20NA%20beverage/Assorted%20Soft%20Drinks%20-%20rendered.jpg?width=1920&name=Assorted%20Soft%20Drinks%20-%20rendered.jpg',
      price: 2.98,
      isRecommended: true,
      isPopular: true,
      ),
    const Product(
      name: "Smoothies#2",
      category: 'Soft Drink',
      imageUrl: 'https://www.puremalt.com/hs-fs/hubfs/Website%20Resources/Media/Soft%20drinks%20and%20NA%20beverage/Assorted%20Soft%20Drinks%20-%20rendered.jpg?width=1920&name=Assorted%20Soft%20Drinks%20-%20rendered.jpg',
      price: 2.98,
      isRecommended: false,
      isPopular: true,
      ),
    const Product(
      name: "Soft Drink #3",
      category: 'Soft Drink',
      imageUrl: 'https://avatars.mds.yandex.net/i?id=e330f7491ebdc4918406e8c20079c532-5680887-images-thumbs&n=13&exp=1',
      price: 2.99,
      isRecommended: false,
      isPopular: true,
      ),
    const Product(
      name: "Soft Drink #4",
      category: 'Soft Drink',
      imageUrl: 'https://avatars.mds.yandex.net/i?id=e330f7491ebdc4918406e8c20079c532-5680887-images-thumbs&n=13&exp=1',
      price: 2.99,
      isRecommended: true,
      isPopular: true,
      ),
  ];
}

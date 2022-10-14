import 'package:equatable/equatable.dart';
import 'package:storeapp/model/models.dart';

class Cart extends Equatable {
  Cart();

  double get subtotal =>
      products.fold(0, (total, curent) => total + curent.price);
  double deliveryFee(subtotal) {
    if (subtotal >= 30.0) {
      return 0.0;
    } else {
      return 10.0;
    }
  }

  double total(subtotal, deliveryFee) {
    return subtotal + deliveryFee(subtotal);    
  }

  String freeDelivery(subtotal) {
    if (subtotal >= 30.0) {
      return "You have Free Delivery";
    } else {
      double missing = 30.0 - subtotal;
      return 'Add \$${missing.toStringAsFixed(2)} for FREE Delivery.';
    }
  }

  String get subtotalString => subtotal.toStringAsFixed(2);
  String get totalString => total(subtotal, deliveryFee).toStringAsFixed(2);
  String get deliveryFeeString => deliveryFee(subtotal).toStringAsFixed(2);
  String get freeDeliveryString => freeDelivery(subtotal);

  List<Product> products = [
    const Product(
        name: "Soft Drink #1",
        category: "Soft Drinks",
        imageUrl:
            'https://avatars.mds.yandex.net/i?id=d42f8b97843424ab3412388ee08d9616-4550834-images-thumbs&n=13',
        price: 2.99,
        isRecommended: true,
        isPopular: false),
    const Product(
        name: "Soft Drink #1",
        category: "Soft Drinks",
        imageUrl:
            'https://avatars.mds.yandex.net/i?id=d42f8b97843424ab3412388ee08d9616-4550834-images-thumbs&n=13',
        price: 2.99,
        isRecommended: true,
        isPopular: false),
    const Product(
        name: "Soft Drink #1",
        category: "Soft Drinks",
        imageUrl:
            'https://avatars.mds.yandex.net/i?id=50056ffc60ed48403983f4cfa06e6862-5235093-images-thumbs&n=13',
        price: 2.99,
        isRecommended: false,
        isPopular: true),
    const Product(
        name: "Soft Drink #1",
        category: "Soft Drinks",
        imageUrl:
            'https://avatars.mds.yandex.net/i?id=d42f8b97843424ab3412388ee08d9616-4550834-images-thumbs&n=13',
        price: 2.99,
        isRecommended: true,
        isPopular: false),
    const Product(
        name: "Soft Drink #1",
        category: "Soft Drinks",
        imageUrl:
            'https://avatars.mds.yandex.net/i?id=50056ffc60ed48403983f4cfa06e6862-5235093-images-thumbs&n=13',
        price: 2.99,
        isRecommended: false,
        isPopular: true),
    const Product(
        name: "Soft Drink #1",
        category: "Soft Drinks",
        imageUrl:
            'https://avatars.mds.yandex.net/i?id=d42f8b97843424ab3412388ee08d9616-4550834-images-thumbs&n=13',
        price: 2.99,
        isRecommended: true,
        isPopular: false),
    const Product(
        name: "Soft Drink #1",
        category: "Soft Drinks",
        imageUrl:
            'https://avatars.mds.yandex.net/i?id=50056ffc60ed48403983f4cfa06e6862-5235093-images-thumbs&n=13',
        price: 2.99,
        isRecommended: false,
        isPopular: true),
  ];

  @override
  List<Object?> get props => [];
}

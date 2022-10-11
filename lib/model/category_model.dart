import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final String name;
  final String imageUrl;

  const Category({required this.name, required this.imageUrl});

  @override
  List<Object?> get props => [name, imageUrl];

  static List<Category> categories = [
    Category(
      name: 'Soft Drinks',
      imageUrl:
          'https://avatars.mds.yandex.net/i?id=3bd4acc32e72b6d71506378b5cd6b82e-4613799-images-thumbs&n=13&exp=1',
    ),
    Category(
      name: 'Smoothies',
      imageUrl:
          'https://avatars.mds.yandex.net/i?id=f9bb6b9aa8a3689fcd369e058d22b4fb-4054908-images-thumbs&n=13&exp=1',
    ),
    Category(
      name: 'Soft Drinks',
      imageUrl:
          'https://avatars.mds.yandex.net/i?id=fd63f0e07f6aa3cb1af0d0802d41178d-4843912-images-thumbs&n=13&exp=1',
    ),
  ];
}

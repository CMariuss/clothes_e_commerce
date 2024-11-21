import 'package:clothes_e_commerce/models/product.dart';

class ProductList {
  final List<String> productNamesList = [
    'Green men\'s jacket for winter',
    'Brow women\'s coat',
    'Light brown women\' coat',
    'Brown men\'s jacket for winter',
  ];

  final List<String> brandList = [
    'H&M',
    'H&M',
    'H&M',
    'H&M',
  ];

  final List<double> priceList = [
    15.99,
    24.99,
    9.99,
    19.99,
  ];

  final List<double> ratingList = [
    4.5,
    4.3,
    4.9,
    3.9,
  ];

  final List<int> reviewsNumberList = [
    175,
    147,
    213,
    117,
  ];

  final List<String> imagePathList = [
    'images/men/jacket_men_01.png',
    'images/women/coat_women_02.png',
    'images/women/coat_women_01.png',
    'images/men/jacket_men_02.png',
  ];

  List<Product> generateProductList() {
    return List.generate(
      4,
      (index) => Product(
        name: productNamesList[index],
        brand: brandList[index],
        price: priceList[index],
        rating: ratingList[index],
        reviewsNumber: reviewsNumberList[index],
        imagePath: imagePathList[index], // Placeholder image
      ),
    );
  }
}

import 'package:clothes_e_commerce/models/product.dart';

class ProductList {
  static List<Product> productList = [];

  static final List<String> productNamesList = [
    'Green men\'s jacket for winter',
    'Brow women\'s coat',
    'Light brown women\' coat',
    'Brown men\'s jacket for winter',
  ];

  static final List<String> brandList = [
    'H&M',
    'H&M',
    'H&M',
    'H&M',
  ];

  static final List<double> priceList = [
    15.99,
    24.99,
    9.99,
    19.99,
  ];

  static final List<double> ratingList = [
    4.5,
    4.3,
    4.9,
    3.9,
  ];

  static final List<int> reviewsNumberList = [
    175,
    147,
    213,
    117,
  ];

  static final List<String> imagePathList = [
    'images/men/jacket_men_01.png',
    'images/women/coat_women_02.png',
    'images/women/coat_women_01.png',
    'images/men/jacket_men_02.png',
  ];

  static void generateProductList() {
    productList = List.generate(
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

  static List<Product> getProductList() {
    return productList;
  }
}

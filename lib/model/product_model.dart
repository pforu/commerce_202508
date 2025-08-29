import 'package:flutter/material.dart';

class ProductModel {
  String image;
  String name;
  int price;
  int reviewCount;
  double reviewRating;
  bool cart;

  ProductModel(
    this.image,
    this.name,
    this.price,
    this.reviewCount,
    this.reviewRating,
    this.cart,
  );

  @override
  String toString() {
    return 'ProductModel{image: $image, name: $name, price: $price, reviewCount: $reviewCount, reviewRating: $reviewRating, cart: $cart}';
  }
}

// class Product extends StatelessWidget {
//   const Product({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     List<ProductModel> productList = [];
//     return Scaffold(
//       body: ListView.builder(
//         itemCount: productList.length,
//         itemBuilder: (context, index) {
//           return Column(
//             children: [
//               productList[index].image
//             ]
//           );
//         },
//       ),
//     );
//   }
// }

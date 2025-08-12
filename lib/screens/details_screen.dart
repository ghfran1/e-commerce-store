import 'package:example/constans.dart';
import 'package:example/models/product.dart';
import 'package:example/widgets/details/details_body.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
    
      appBar: detailAppar(context),
     body: DetailsBody(
      product: product,
     ),
    );
  }

  AppBar detailAppar(BuildContext context) {
    return AppBar(
      backgroundColor: kBackgroundColor,
        elevation:0,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context); // بيرجعك للشاشة السابقة
        },
      ),
      title: const Text('تفاصيل المنتج' ,
      style: const TextStyle(fontSize: 19),


      ),
    );
  }
}

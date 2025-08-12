import 'package:example/constans.dart';
import 'package:example/models/product.dart';
import 'package:example/screens/details_screen.dart';
import 'package:example/widgets/home/product_cart.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                // الخلفية
                Container(
                  color: kPrimaryColor,
                ),

                // الصندوق الكبير الخلفي
                Container(
                  margin: const EdgeInsets.only(top: 70.0),
                  decoration: const BoxDecoration(
                    color: kBackgroundColor, // لون الخلفية
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                ),
                
                // الكارت
                ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (context,index) => ProductCard(
                    itemIndex: index,
                    product: products[index],
                   

                     press: ()   {
                    Navigator.push(
                            context,
                            MaterialPageRoute(
                           builder: (context) => DetailsScreen(
                            product: products[index],
                           ),
                                ),
                                      );
                                     },

                  ),

                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

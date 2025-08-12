import 'package:example/constans.dart';
import 'package:flutter/material.dart';
import 'package:example/models/product.dart';
import 'package:example/widgets/details/product_image.dart';
import 'package:example/widgets/details/color_dot.dart';


class DetailsBody extends StatelessWidget {
  final Product product;
  const DetailsBody({super.key , required this.product});

  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: kDefaultpadding * 1.5),
         // height: 300.0,
          decoration: BoxDecoration(
            color: kBackgroundColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: ProductImage(size: size,
                image:product.image,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: kDefaultpadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ColorDot(
                      fillColor: kTextLightColor,
                      isSelected: true,
                    ),

                        ColorDot(
                      fillColor: Colors.blue,
                      isSelected: false,
                    ),


                        ColorDot(
                      fillColor: Colors.red,
                      isSelected: false,
                    ),
                  ],
                
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: kDefaultpadding/2),
                child: Text(product.title,
                style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
              Text('السعر:\$${product.price}',
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.w600,
                color:Colors.lightGreen,
              ),
              ),
              SizedBox(height: kDefaultpadding,),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: kDefaultpadding/2),
          padding: EdgeInsets.symmetric(horizontal: kDefaultpadding * 1.5,
          vertical: kDefaultpadding /2),
          child: Text(
                        product.description ,
            style: TextStyle(color: Colors.white,fontSize: 12.0),
            ),
        ),
    
      ],
    );
  }
}


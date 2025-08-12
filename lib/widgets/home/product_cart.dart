import 'package:flutter/material.dart';
import 'package:example/models/product.dart';
import 'package:example/constans.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    this.itemIndex,
    this.product,
    this.press,
  }) : super(key: key);

  final int? itemIndex;
  final Product? product;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: kDefaultpadding,
        vertical: kDefaultpadding / 2,
      ),
      height: 190.0,
      child: InkWell(
        onTap: press,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 166.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(0, 15),
                    blurRadius: 25,
                    color: Colors.black26,
                  ),
                ],
              ),
            ),
            Positioned(
              top: 0.0,
              left: 0.0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: kDefaultpadding),
                height: 160.0,
                width: 200.0,
                child: Image.asset(
                  product!.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 0.0,
              right: 0.0,
              child: SizedBox(
                height: 163.0,
                width: size.width - 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: kDefaultpadding),
                      child: Text(
                        product!.title, // 👈 بدل النص الثابت
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: kDefaultpadding),
                      child: Text(
                        product!.subTitle, // 👈 بدل النص الثابت
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(kDefaultpadding),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: kDefaultpadding * 1.5,
                          vertical: kDefaultpadding / 5,
                        ),
                        decoration: BoxDecoration(
                          color: SecondaryColor,
                          borderRadius: BorderRadius.circular(22.0),
                        ),
                        child: Text('السعر: \$${product!.price}'), // 👈 عرض السعر من الكائن
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

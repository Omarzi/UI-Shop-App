import 'package:flutter/material.dart';
import 'package:shop_application/screens/home/components/product_card.dart';
import 'package:shop_application/screens/home/components/section_title.dart';

import '../../../constants.dart';
import '../../../models/Product.dart';

class Popular extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTile(title: 'Popular', pressSeeAll: () {}),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              demo_product.length,
              (index) => Padding(
                padding: EdgeInsets.only(left: defaultPadding),
                child: ProductCard(
                  title: demo_product[index].title,
                  image: demo_product[index].image,
                  press: () {},
                  price: demo_product[index].price,
                  bgColor: demo_product[index].bgColor,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

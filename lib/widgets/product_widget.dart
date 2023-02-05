import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruite_app/data/data.dart';
import 'package:fruite_app/utils/colors.dart';
import 'package:fruite_app/utils/utils.dart';

class ProductWidget extends StatelessWidget {
  final Product product;
  const ProductWidget({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: product.color,
      child: Stack(
        children: [
          // image of product
          Align(
            alignment: Alignment.topCenter,
            child: Transform.rotate(
              angle: 2.05 * pi,
              child: Image.asset(
                product.image,
                height: 80,
              ),
            ),
          ),

          // heart icon
          Positioned(
            right: 0,
            top: 0,
            child: Container(
              height: 30,
              width: 30,
              margin: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: boxShadow,
              ),
              child: Icon(
                FontAwesomeIcons.solidHeart,
                color:
                    product.isSelected == true ? kPrimaryColor : Colors.black38,
                size: 15,
              ),
            ),
          ),

          // product details
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 100,
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  // product based box shadow
                  BoxShadow(
                    color: product.color.withOpacity(0.5),
                    blurRadius: 2,
                    spreadRadius: 2,
                    offset: const Offset(0, 1),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 5),
                  priceWidget(product.price),
                  const SizedBox(height: 10),
                  Row(
                    children: const [
                      Text("See More"),
                      SizedBox(width: 10),
                      Icon(
                        FontAwesomeIcons.arrowTrendUp,
                        color: kPrimaryColor,
                        size: 18,
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:app_2/constants.dart';
import 'package:app_2/models/product.dart';
import './product_header.dart';
import 'package:flutter/material.dart';
import './color_and_size.dart';
import './description.dart';
import 'add_to_cart.dart';
import './counter_and_fav_icon.dart';

class DetailsBody extends StatelessWidget {
  final Product product;

  const DetailsBody({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // this will provide total width and height
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            width: size.width,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                      top: size.height * 0.12,
                      left: kDefaultPadding,
                      right: kDefaultPadding),
                  // height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: [
                      ColorAndSize(product: product),
                      SizedBox(height: kDefaultPadding / 2),
                      Description(product: product),
                      SizedBox(height: kDefaultPadding / 2),
                      CounterWithFavIcon(),
                      SizedBox(height: kDefaultPadding),
                      AddToCart(product: product)
                    ],
                  ),
                ),
                ProductHeader(product: product)
              ],
            ),
          )
        ],
      ),
    );
  }
}

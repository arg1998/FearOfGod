import 'package:fear_of_god/models/ShopItem.model.dart';
import 'package:fear_of_god/pages/SelectedSize.dart';
import 'package:fear_of_god/pages/VerticalIndicator.dart';
import 'package:fear_of_god/widgets/FearOfGodHeader.dart';
import 'package:flutter/material.dart';
import 'package:recase/recase.dart';

class ProductDetailsPage extends StatefulWidget {
  static const routeName = "/detailes";

  @override
  _ProductDetailsPageState createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  int selectedImage = 0;
  int selectedSize = 0;

  void _onPageChanged(int pageIndex) {
    setState(() {
      selectedImage = pageIndex;
    });
  }

  void _onSizeSelect(int index) {
    setState(() {
      selectedSize = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final ShopItem product =
        ModalRoute.of(context).settings.arguments as ShopItem;

    final width = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: Color(0xFFF7F7F7),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          // color: Colors.green,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SafeArea(
                  child: FearOfGodHeader(),
                ),
                Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    AspectRatio(
                      aspectRatio: 1,
                      child: Container(
                        width: double.infinity,
                        // color: Colors.white,
                        child: PageView(
                          onPageChanged: _onPageChanged,
                          scrollDirection: Axis.vertical,
                          children: [
                            Image.asset(product.imagePath),
                            Image.asset(product.imagePath),
                            Image.asset(product.imagePath),
                            Image.asset(product.imagePath)
                          ],
                        ),
                      ),
                    ),
                    VerticalIndicator(count: 4, selected: selectedImage)
                  ],
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 30,
                    horizontal: 20,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ConstrainedBox(
                                constraints:
                                    BoxConstraints(maxWidth: width - 200),
                                child: Text(
                                  product.name,
                                  softWrap: true,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              Text(
                                "€${product.price}",
                                softWrap: true,
                                style: TextStyle(fontSize: 18),
                                textAlign: TextAlign.start,
                              )
                            ],
                          ),
                          Container(
                            width: 150,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Colors.black),
                            alignment: Alignment.center,
                            child: Text(
                              "ADD TO CART",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 18),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 20),
                      SelectedSize(
                        selected: selectedSize,
                        onSelectSize: _onSizeSelect,
                      ),
                      SizedBox(height: 50),
                      Text(
                        ReCase(product.description).sentenceCase,
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            height: 1.1,
                            fontFamily: ""),
                      ),
                      SizedBox(height: 50),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

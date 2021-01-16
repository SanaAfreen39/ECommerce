import 'package:ecommerce_int2/models/product.dart';
import 'package:ecommerce_int2/screens/product/product_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Product> products = [
    Product(
        'assets/pl2.jpg',
        'Plant A',
        'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.',
        2.33),
    Product(
        'assets/pl3.jpeg',
        'Plant B',
        'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.',
        10),
    Product(
        'assets/pl4.jpeg',
        'Plant C',
        'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.',
        20),
    Product(
        'assets/pl5.jpeg',
        'Plant D',
        'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.',
        30),
    Product(
        'assets/pl6.jpeg',
        'Plant E',
        'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.',
        40),
    Product(
        'assets/pl7.jpeg',
        'Plant F',
        'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.',
        102.33),
    Product(
        'assets/pl8.jpg',
        'Plant G',
        'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.',
        52.33),
    Product(
        'assets/pl9.jpeg',
        'Plant H',
        'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.',
        62.33),
    Product(
        'assets/pl10.jpeg',
        'Plant I',
        'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.',
        72.33),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white10,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.workspaces_filled),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: 'Choose',
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Montserrat",
                          fontSize: 30.0)),
                  TextSpan(
                      text: ' Device',
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                          fontFamily: "Montserrat",
                          fontSize: 30.0))
                ])),
              ),
            ),
            Row(
              children: [
                Container(
                  height: 50,
                  width: 55,
                  decoration: BoxDecoration(
                      color: Colors.white38,
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(18))),
                  child: Center(
                    child: Icon(Icons.search),
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Container(
                  height: 50,
                  width: 55,
                  decoration: BoxDecoration(
                      color: Colors.white38,
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(18))),
                  child: Center(
                    child: Icon(Icons.settings_input_component),
                  ),
                ),
                SizedBox(
                  width: 25.0,
                ),
                Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Cart",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Montserrat",
                                fontSize: 20.0)),
                        Container(
                          height: 40,
                          width: 45,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              border: Border.all(
                                color: Colors.white,
                                width: 1,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          child: Center(
                            child: Text(
                              "2",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    )),
              ],
            ),
            Expanded(
              child: StaggeredGridView.countBuilder(
                // physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                crossAxisCount: 4,
                itemCount: products.length,
                // shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) => new ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  child: InkWell(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => ProductPage(product: products[index]))),
                    child: Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                                margin: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                  gradient: RadialGradient(
                                      colors: [
                                        Colors.grey[100],
                                        Colors.grey[200]
                                      ],
                                      center: Alignment(0, 0),
                                      radius: 0.5,
                                      focal: Alignment(0, 0),
                                      focalRadius: 0.1),
                                ),
                                child: Hero(
                                    tag: products[index].image,
                                    child: Image.asset(products[index].image))),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(products[index].name,
                                    style: const TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "Montserrat",
                                        fontSize: 15.0))),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                    text: '\$',
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: "Montserrat",
                                        fontSize: 15.0)),
                                TextSpan(
                                    text: products[index].price.toString(),
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: "Montserrat",
                                        fontSize: 15.0))
                              ])),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                staggeredTileBuilder: (int index) =>
                    new StaggeredTile.count(2, index.isEven ? 3 : 2),
                mainAxisSpacing: 3.0,
                crossAxisSpacing: 3.0,
              ),
            ),
          ],
        ),
      ),
    );
    throw UnimplementedError();
  }
}

import 'package:ecommerce_int2/app_properties.dart';
import 'package:ecommerce_int2/screens/home_screen.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  PageController controller = PageController();
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            color: Colors.green[100],
            image: DecorationImage(
                image: AssetImage('assets/p1.JPG'), fit: BoxFit.fitHeight)
            // image: DecorationImage(image: AssetImage('assets/background.png'))
            ),
        child: Stack(
          children: <Widget>[
            PageView(
              onPageChanged: (value) {
                setState(() {
                  pageIndex = value;
                });
              },
              controller: controller,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 100.0, left: 8),
                      child: Text(
                        'Get Any Thing Online',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(
                        8.0,
                      ),
                      child: Text(
                        'You can buy anything ranging from digital products to hardware within few clicks.',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 100.0, left: 8),
                      child: Text(
                        'Shipping to anywhere ',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(
                        8.0,
                      ),
                      child: Text(
                        'We will ship to anywhere in the world, With 30 day 100% money back policy.',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 100.0, left: 8),
                      child: Text(
                        'On-time delivery',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'You can track your product with our powerful tracking service.',
                        textAlign: TextAlign.right,
                        style: TextStyle(color: Colors.grey, fontSize: 16.0),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 100.0, left: 8),
                      child: Text(
                        'Lets start...!!!!!!',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Positioned(
              bottom: 50,
              left: 20,
              child: InkWell(
                onTap: () {
                  print("aaaaaaaaaaaaaa");
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                  // builder: (context) => MainPage()));
                },
                child: Container(
                  height: 60,
                  width: 65,
                  decoration: BoxDecoration(
                      color: Colors.white38,
                      border: Border.all(color: Colors.black, width: 3),
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: Center(
                    child: Icon(Icons.arrow_forward_ios_sharp),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 50.0,
              left: 10,
              child: SizedBox(
                // width: MediaQuery.of(context).size.width,
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.all(8.0),
                          height: 2.5,
                          width: 25,
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                  color: pageIndex == 0
                                      ? Colors.black
                                      : Colors.grey,
                                  width: 2),
                              color: pageIndex == 0 ? green : Colors.white),
                        ),
                        Container(
                          margin: EdgeInsets.all(8.0),
                          height: 2.5,
                          width: 25,
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                  color: pageIndex == 1
                                      ? Colors.black
                                      : Colors.grey,
                                  width: 2),
                              color: pageIndex == 1 ? green : Colors.white),
                        ),
                        Container(
                          margin: EdgeInsets.all(8.0),
                          height: 2.5,
                          width: 25,
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                  color: pageIndex == 2
                                      ? Colors.black
                                      : Colors.grey,
                                  width: 2),
                              color: pageIndex == 2 ? green : Colors.white),
                        ),
                        Container(
                          margin: EdgeInsets.all(8.0),
                          height: 2.5,
                          width: 25,
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                  color: pageIndex == 3
                                      ? Colors.black
                                      : Colors.grey,
                                  width: 2),
                              color: pageIndex == 2 ? green : Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

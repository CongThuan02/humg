import 'package:flutter/material.dart';
import 'package:humg_ui/category_card.dart';
import 'package:humg_ui/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Cairo",
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .45,
            decoration: const BoxDecoration(
              color: Color(0xfff5ceb8),
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage("assets/images/meditation_bg.png"),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      alignment: Alignment.center,
                      height: 52,
                      width: 52,
                      // ignore: prefer_const_constructors
                      decoration: BoxDecoration(
                        color: const Color(0xfff2bea1),
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.menu),
                        splashColor: Colors.red,
                      ),
                    ),
                  ),
                  myName(
                    myname: 'Ho??ng C??ng Thu???n',
                  ),
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(29),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Padding(
                              padding: EdgeInsets.only(left: 25.0),
                              child: Icon(
                                Icons.search,
                                color: Colors.orange,
                              ),
                            ),
                            hintText: "Search"),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 3,
                      childAspectRatio: .70,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: <Widget>[
                        categiryCard(
                          name: 'Th???i kh??a bi???u',
                          images: 'assets/images/tkb.png',
                        ),
                        categiryCard(
                          name: '??i???m',
                          images: 'assets/images/a.png',
                        ),
                        categiryCard(
                          name: 'L???ch Thi',
                          images: 'assets/images/download.jpg',
                        ),
                        categiryCard(
                          name: '????ng k?? m??n',
                          images: 'assets/images/images.png',
                        ),
                        categiryCard(
                          name: 'H???c ph??',
                          images: 'assets/images/hocphi.jpg',
                        ),
                        categiryCard(
                          name: 'Tin t???c',
                          images: 'assets/images/tintuc.jpg',
                        ),
                        categiryCard(
                          name: 'B??? ph???n m???t c???a',
                          images: 'assets/images/a.png',
                        ),
                        categiryCard(
                          name: 'Ch????ng tr??nh ????o t???o',
                          images: 'assets/images/a.png',
                        ),
                        categiryCard(
                          name: 'Quy ch???-Quy ?????nh',
                          images: 'assets/images/a.png',
                        ),
                        categiryCard(
                          name: 'Thong b??o',
                          images: 'assets/images/a.png',
                        ),
                        categiryCard(
                          name: 'G???i ?? ki???n',
                          images: 'assets/images/a.png',
                        ),
                        categiryCard(
                          name: 'Gi???i thi???u',
                          images: 'assets/images/a.png',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class myName extends StatelessWidget {
  final String myname;
  const myName({
    Key? key,
    required this.myname,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      myname,
      style: TextStyle(fontSize: 45),
    );
  }
}

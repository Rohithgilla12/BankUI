import 'package:bank_ui/theme.dart';
import 'package:bank_ui/widgets/card_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Nunito',
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var boxDecoration = BoxDecoration(
      color: BankTheme.primary,
      borderRadius: BorderRadius.all(
        Radius.circular(32),
      ),
    );
    var data = [0.0, 0.3, 0.2, 0.4, 0.3, 0.2, 0.3];
    var data2 = [0.0, 0.1, 0.3, 0.2, 0.0, 0.1, 0.2];
    var cardHeadingStyle = TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w700,
      fontSize: 20,
    );
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: BankTheme.black,
      appBar: buildAppBar(),
      body: Column(
        children: [
          CardBal(
            boxDecoration: boxDecoration,
            data: data,
            data2: data2,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              height: 400,
              child: Stack(
                children: [
                  Container(
                    height: 140,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          BankTheme.orange,
                          Color(0xffFEC18A),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular((30)),
                        topRight: Radius.circular((30)),
                      ),
                      border: Border.all(
                        color: BankTheme.black,
                        width: 4,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Salary card',
                            style: cardHeadingStyle,
                          ),
                          Text(
                            '\$ 1,112',
                            style: cardHeadingStyle,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 75.0,
                    left: 0.0,
                    right: 0.0,
                    child: Container(
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular((30)),
                          topRight: Radius.circular((30)),
                        ),
                        border: Border.all(
                          color: BankTheme.black,
                          width: 4,
                        ),
                        gradient: LinearGradient(
                          colors: [
                            BankTheme.violet,
                            // BankTheme.palePurple,
                            Color(0xffE0ABF2)
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(32.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Private card',
                              style: cardHeadingStyle,
                            ),
                            Text(
                              '\$ 5,437',
                              style: cardHeadingStyle,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 150.0,
                    left: 0.0,
                    right: 0.0,
                    child: Container(
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular((30)),
                        ),
                        border: Border.all(
                          color: BankTheme.black,
                          width: 4,
                        ),
                        gradient: LinearGradient(
                          colors: [
                            Color(0xffFCA7E2),
                            Color(0xffFC9FD2),
                            Color(0xffFCD8BD),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        // crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 32,
                              right: 32,
                              top: 16,
                              bottom: 16,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Family card',
                                      style: cardHeadingStyle,
                                    ),
                                    Text(
                                      '**** 2616',
                                      style: TextStyle(
                                        color: Colors.white70,
                                      ),
                                    )
                                  ],
                                ),
                                Text(
                                  '\$ 15,269',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 24,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 32,
                              right: 32,
                              top: 16,
                              bottom: 0,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                  radius: 20,
                                  backgroundImage: NetworkImage(
                                    "https://lh3.googleusercontent.com/a-/AOh14GiZ8uDLrYJ6qZ51x_LUT2j5LFmhYL-LP6Yn-1WTdao=s88-c-k-c0x00ffffff-no-rj-mo",
                                  ),
                                ),
                                Container(
                                  height: 42,
                                  child: Image.network(
                                    'https://www.montyhalls.co.uk/wp-content/uploads/2014/11/logo-visa.png',
                                  ),
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
            ),
          ),
        ],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      actions: [
        Padding(
          padding: const EdgeInsets.only(
            right: 16.0,
          ),
          child: IconButton(
            icon: Icon(
              Icons.notifications_none,
              size: 32,
            ),
            onPressed: () {},
          ),
        ),
      ],
      title: Row(
        children: [
          CircleAvatar(
            radius: 24,
            backgroundImage: NetworkImage(
              "https://lh3.googleusercontent.com/a-/AOh14GiZ8uDLrYJ6qZ51x_LUT2j5LFmhYL-LP6Yn-1WTdao=s88-c-k-c0x00ffffff-no-rj-mo",
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 16.0,
            ),
            child: Text(
              'Hi, Gilla!',
              style: TextStyle(
                fontSize: 24,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

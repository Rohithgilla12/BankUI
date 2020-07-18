import 'package:bank_ui/theme.dart';
import 'package:bank_ui/widgets/card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';

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
    return Scaffold(
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
                // alignment: Alignment.bottomCenter,
                // overflow: Overflow.clip,
                children: [
                  Container(
                    height: 120,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          BankTheme.orange,
                          Colors.orange[100],
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
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
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 150.0,
                    left: 0.0,
                    right: 0.0,
                    child: Container(
                      height: 220,
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

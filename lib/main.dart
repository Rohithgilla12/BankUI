import 'package:bank_ui/theme.dart';
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
      body: CardBal(boxDecoration: boxDecoration, data: data, data2: data2),
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

class CardBal extends StatelessWidget {
  const CardBal({
    Key key,
    @required this.boxDecoration,
    @required this.data,
    @required this.data2,
  }) : super(key: key);

  final BoxDecoration boxDecoration;
  final List<double> data;
  final List<double> data2;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 32),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width * 0.5 - 30,
                  decoration: boxDecoration,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Total balance',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Nunito',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0),
                        child: Text(
                          '\$ 15,269',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Nunito',
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 32.0,
                          right: 32.0,
                          top: 8,
                        ),
                        child: Container(
                          height: 40,
                          child: Sparkline(
                            data: data,
                            lineWidth: 3.5,
                            lineColor: BankTheme.lightBlue,
                            fillColor: BankTheme.lightBlue,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width * 0.5 - 30,
                  decoration: boxDecoration,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Monthly Spending',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Nunito',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0),
                        child: Text(
                          '\$ 7,175',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Nunito',
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 32.0,
                          right: 32.0,
                          top: 8,
                        ),
                        child: Container(
                          height: 40,
                          child: Sparkline(
                            data: data2,
                            lineColor: BankTheme.pink,
                            fillColor: BankTheme.pink,
                            lineWidth: 3.5,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

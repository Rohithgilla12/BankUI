import 'package:bank_ui/theme.dart';
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

    return Scaffold(
      backgroundColor: BankTheme.black,
      appBar: buildAppBar(),
      body: Column(
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
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width * 0.5 - 30,
                      decoration: boxDecoration),
                ),
              ],
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

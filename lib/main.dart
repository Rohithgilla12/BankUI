import 'package:bank_ui/payment_story.dart';
import 'package:bank_ui/theme.dart';
import 'package:bank_ui/widgets/card_widget.dart';
import 'package:bank_ui/widgets/my_cards.dart';
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
            child: Text(
              'My Cards',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
          ),
          MyCards(
            cardHeadingStyle: cardHeadingStyle,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 24.0,
              right: 24.0,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: BankTheme.primary,
                borderRadius: BorderRadius.all(
                  Radius.circular(16),
                ),
              ),
              height: 64,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Add card',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                    Icon(
                      Icons.add,
                      color: Colors.white,
                    )
                  ],
                ),
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
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => PaymentStory(),
                ),
              );
            },
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

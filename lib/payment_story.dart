import 'package:bank_ui/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';

class PaymentStory extends StatelessWidget {
  const PaymentStory({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cardHeadingStyle = TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w700,
      fontSize: 20,
    );
    return Scaffold(
      backgroundColor: BankTheme.black,
      appBar: buildAppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                buildContainer(cardHeadingStyle),
                SizedBox(
                  height: 30,
                ),
                buildPassbook(
                  '💊',
                  'Healthcare',
                  '18',
                  '10th July',
                ),
                buildPassbook(
                  '🛍',
                  'Shopping',
                  '200',
                  '9th July',
                ),
                buildPassbook(
                  '🚕',
                  'Taxi',
                  '70',
                  '9th July',
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: BankTheme.primary,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(32),
                  topLeft: Radius.circular(32),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      height: 160,
                      child: Sparkline(
                        data: [0.0, 0.3, 0.2, 0.4, 0.3, 0.2, 0.3],
                        lineWidth: 3.5,
                        lineColor: BankTheme.violet,
                        fillColor: BankTheme.violet,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 16.0,
                      right: 16.0,
                      top: 24.0,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: BankTheme.black,
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
                              'Add Expense 💰',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                              ),
                            ),
                            Icon(
                              Icons.attach_money,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Padding buildPassbook(
    String emojiData,
    String healthCare,
    String amountSpend,
    String dateData,
  ) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 8.0,
        left: 8.0,
        right: 8.0,
        bottom: 8.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                height: 54,
                width: 54,
                decoration: BoxDecoration(
                  color: BankTheme.primary,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Center(
                  child: Text(
                    emojiData,
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      healthCare,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      '**** 2616',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '-\$ $amountSpend',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  dateData,
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container buildContainer(TextStyle cardHeadingStyle) {
    return Container(
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
          child: Icon(
            Icons.grid_on,
            size: 28,
          ),
        ),
      ],
      title: Text(
        'Payment Story',
        style: TextStyle(
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }
}

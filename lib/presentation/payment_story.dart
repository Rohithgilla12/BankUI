import 'package:bank_ui/presentation/widgets/family_card.dart';
import 'package:bank_ui/presentation/widgets/passbook_widget.dart';
import 'package:bank_ui/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';

class PaymentStory extends StatelessWidget {
  const PaymentStory({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle cardTextStyle = Theme.of(context).textTheme.subtitle1.copyWith(
          color: Colors.white,
          fontWeight: FontWeight.w600,
        );

    final BoxDecoration decoration = BoxDecoration(
      gradient: const LinearGradient(
        colors: <Color>[
          BankTheme.orange,
          Color(0xFFFEC18A),
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(30.0),
        topRight: Radius.circular(30.0),
      ),
      border: Border.all(
        color: BankTheme.black,
        width: 4.0,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment Story'),
        actions: const <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Icon(
              Icons.grid_on,
              size: 28.0,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            FamilyCard(
              decoration: decoration,
              cardTextStyle: cardTextStyle,
            ),
            const SizedBox(height: 24.0),
            const PassbookWidget(
              emoji: '💊',
              amountSpend: '18',
              date: '26th Dec',
              title: 'Health care',
            ),
            const PassbookWidget(
              emoji: '🛍',
              amountSpend: '18',
              date: '27th Dec',
              title: 'Shopping',
            ),
            const PassbookWidget(
              emoji: '🚕',
              amountSpend: '18',
              date: '28th Dec',
              title: 'Taxi',
            ),
            const SizedBox(height: 16.0),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: BankTheme.primary,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(32.0),
                    topLeft: Radius.circular(32.0),
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      height: 160.0,
                      child: Sparkline(
                        data: const <double>[0.0, 0.3, 0.2, 0.4, 0.3, 0.2, 0.3],
                        lineWidth: 3.5,
                        lineColor: BankTheme.violet,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        height: 64.0,
                        decoration: BoxDecoration(
                          color: BankTheme.black,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'Add Expense 💰',
                              style: Theme.of(context).textTheme.subtitle1.copyWith(color: Colors.white),
                            ),
                            const Icon(Icons.attach_money, color: Colors.white),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

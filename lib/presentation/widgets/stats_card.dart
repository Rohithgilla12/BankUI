import 'package:bank_ui/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';

class StatsCards extends StatelessWidget {
  const StatsCards({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              // padding: const EdgeInsets.only(top: 16.0),
              height: 150,
              width: MediaQuery.of(context).size.width * 0.5 - 20,
              decoration: BoxDecoration(
                color: BankTheme.primary,
                borderRadius: BorderRadius.circular(32.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Total balance',
                    style: Theme.of(context).textTheme.subtitle1.copyWith(color: Colors.white),
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    '\$ 15,269',
                    style: Theme.of(context).textTheme.headline6.copyWith(color: Colors.white),
                  ),
                  const SizedBox(height: 8.0),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 4.0),
                    height: 40.0,
                    child: Sparkline(
                      data: const <double>[0.0, 0.3, 0.2, 0.4, 0.3, 0.2, 0.3],
                      lineWidth: 3.5,
                      lineColor: BankTheme.lightBlue,
                    ),
                  )
                ],
              ),
            ),
            Container(
              // padding: const EdgeInsets.only(top: 16.0),
              height: 150,
              width: MediaQuery.of(context).size.width * 0.5 - 20,
              decoration: BoxDecoration(
                color: BankTheme.primary,
                borderRadius: BorderRadius.circular(32.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Monthly Spending',
                    style: Theme.of(context).textTheme.subtitle1.copyWith(color: Colors.white),
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    '\$ 7,175',
                    style: Theme.of(context).textTheme.headline6.copyWith(color: Colors.white),
                  ),
                  const SizedBox(height: 8.0),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 4.0),
                    height: 40.0,
                    child: Sparkline(
                      data: const <double>[0.0, 0.1, 0.3, 0.2, 0.0, 0.1, 0.2],
                      lineWidth: 3.5,
                      lineColor: BankTheme.pink,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

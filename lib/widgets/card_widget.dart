import 'package:bank_ui/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';

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

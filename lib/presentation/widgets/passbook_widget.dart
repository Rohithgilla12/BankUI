import 'package:bank_ui/theme.dart';
import 'package:flutter/material.dart';

class PassbookWidget extends StatelessWidget {
  final String emoji;
  final String title;
  final String amountSpend;
  final String date;

  const PassbookWidget({
    Key key,
    @required this.amountSpend,
    @required this.date,
    @required this.emoji,
    @required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                height: 54.0,
                width: 54.0,
                decoration: BoxDecoration(
                  color: BankTheme.primary,
                  borderRadius: BorderRadius.circular(18.0),
                ),
                child: Center(
                  child: Text(
                    emoji,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title,
                      style: Theme.of(context).textTheme.bodyText1.copyWith(color: Colors.white),
                    ),
                    Text(
                      '**** 2616',
                      style: Theme.of(context).textTheme.caption.copyWith(color: Colors.white54),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text(
                '-\$ $amountSpend',
                style: Theme.of(context).textTheme.bodyText1.copyWith(color: Colors.white),
              ),
              Text(
                date,
                style: Theme.of(context).textTheme.caption.copyWith(color: Colors.white54),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

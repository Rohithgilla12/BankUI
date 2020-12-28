import 'package:bank_ui/presentation/widgets/bank_app_bar.dart';
import 'package:bank_ui/presentation/widgets/stats_card.dart';
import 'package:bank_ui/presentation/widgets/user_cards.dart';
import 'package:bank_ui/theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        child: BankAppBar(),
        preferredSize: Size(double.infinity, kToolbarHeight),
      ),
      body: Column(
        children: <Widget>[
          const SizedBox(height: 16.0),
          const StatsCards(),
          const SizedBox(height: 16.0),
          Text(
            'My Cards',
            style: Theme.of(context).textTheme.headline6.copyWith(color: Colors.white),
          ),
          const UserCards(),
          const SizedBox(height: 16.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              height: 64.0,
              decoration: BoxDecoration(
                color: BankTheme.primary,
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Add Card',
                    style: Theme.of(context).textTheme.subtitle1.copyWith(color: Colors.white),
                  ),
                  const Icon(
                    Icons.add,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

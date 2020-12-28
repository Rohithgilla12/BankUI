import 'package:bank_ui/theme.dart';
import 'package:flutter/material.dart';

class UserCards extends StatelessWidget {
  const UserCards({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
    final TextStyle cardTextStyle = Theme.of(context).textTheme.subtitle1.copyWith(
          color: Colors.white,
          fontWeight: FontWeight.w600,
        );
    return Container(
      padding: const EdgeInsets.all(8.0),
      height: 380.0,
      child: Stack(
        children: <Widget>[
          Container(
            height: 140.0,
            decoration: decoration,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Salary Card',
                    style: cardTextStyle,
                  ),
                  Text(
                    '\$ 1,112',
                    style: cardTextStyle,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 75.0,
            left: 0.0,
            right: 0.0,
            child: Container(
              height: 120,
              decoration: decoration.copyWith(
                gradient: const LinearGradient(
                  colors: <Color>[
                    BankTheme.violet,
                    Color(0xffE0ABF2),
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Private Card',
                      style: cardTextStyle,
                    ),
                    Text(
                      '\$ 5,437',
                      style: cardTextStyle,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 150.0,
            left: 0.0,
            right: 0.0,
            child: Container(
              height: 200.0,
              decoration: decoration.copyWith(
                borderRadius: BorderRadius.circular(30),
                gradient: const LinearGradient(
                  colors: <Color>[
                    Color(0xFFFCA7E2),
                    Color(0xFFFC9FD2),
                    Color(0xFFFCD8BD),
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Family Card',
                              style: cardTextStyle,
                            ),
                            Text(
                              '**** 2616',
                              style: cardTextStyle.copyWith(
                                fontSize: 14.0,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          '\$ 15,269',
                          style: cardTextStyle,
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        const CircleAvatar(
                          radius: 20.0,
                          backgroundImage: NetworkImage(
                              'https://lh3.googleusercontent.com/a-/AOh14GiZ8uDLrYJ6qZ51x_LUT2j5LFmhYL-LP6Yn-1WTdao=s88-c-k-c0x00ffffff-no-rj-mo'),
                        ),
                        Container(
                          height: 40.0,
                          child: Image.network(
                            'https://www.montyhalls.co.uk/wp-content/uploads/2014/11/logo-visa.png',
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

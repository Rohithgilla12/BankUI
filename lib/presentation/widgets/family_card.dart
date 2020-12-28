import 'package:flutter/material.dart';

class FamilyCard extends StatelessWidget {
  const FamilyCard({
    Key key,
    @required this.decoration,
    @required this.cardTextStyle,
  }) : super(key: key);

  final BoxDecoration decoration;
  final TextStyle cardTextStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}

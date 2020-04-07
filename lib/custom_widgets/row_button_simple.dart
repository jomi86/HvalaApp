import 'package:flutter/material.dart';
import 'package:hvala/theme/HTextStyles.dart';

class SimpleRowButton extends StatelessWidget {
  final Function() onPressedAction;
  final String title;

  const SimpleRowButton(
      {@required this.onPressedAction, @required this.title, Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: SizedBox(
            height: 80,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: RaisedButton(
                onPressed: onPressedAction,
                child: Text(
                  title.toUpperCase(),
                  textAlign: TextAlign.center,
                  style: HTextStyle.buttonRegular(context),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

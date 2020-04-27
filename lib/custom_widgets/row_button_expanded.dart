import 'package:Hvala/theme/HColors.dart';
import 'package:Hvala/theme/HTextStyles.dart';
import 'package:flutter/material.dart';

class ExpandedRowButton extends StatelessWidget {
  final Function() onPressedAction;
  final String title;
  final String subtitle;

  const ExpandedRowButton(
      {@required this.onPressedAction,
      @required this.title,
      @required this.subtitle,
      Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: SizedBox(
            height: 120,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: RaisedButton(
                onPressed: onPressedAction,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Flexible(
                      flex: 1,
                      child: Text(
                        title.toUpperCase(),
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: HTextStyle.buttonRegular(context),
                      ),
                    ),
                    Divider(
                      height: 1.0,
                      color: HColors.dividerColor(),
                    ),
                    Flexible(
                      flex: 1,
                      child: Text(
                        subtitle,
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                        style: HTextStyle.buttonSmall(context),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

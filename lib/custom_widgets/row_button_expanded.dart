import 'package:Hvala/models/model_simple_list_item.dart';
import 'package:Hvala/theme/HColors.dart';
import 'package:Hvala/theme/HTextStyles.dart';
import 'package:Hvala/utils/favorite_helper.dart';
import 'package:flutter/material.dart';

class ExpandedRowButton extends StatelessWidget {
  final Function() onPressedAction;
  final SimpleListItem item;

  const ExpandedRowButton(
      {@required this.onPressedAction, @required this.item, Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: SizedBox(
            height: 125,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: RaisedButton(
                onPressed: onPressedAction,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Flexible(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Flexible(
                            flex: 8,
                            child: Text(
                              item.name.toUpperCase(),
                              textAlign: TextAlign.left,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: HTextStyle.buttonRegular(context),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: IconButton(
                              icon: Icon(Icons.favorite_border),
                              color: HColors.white(),
                              iconSize: 24,
                              onPressed: () {
                                addToFavorites(item);
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                    Divider(
                      height: 1.0,
                      color: HColors.dividerColor(),
                    ),
                    Flexible(
                      flex: 1,
                      child: Text(
                        item.description,
                        textAlign: TextAlign.left,
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

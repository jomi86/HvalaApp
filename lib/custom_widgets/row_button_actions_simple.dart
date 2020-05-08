import 'package:Hvala/models/model_simple_list_item.dart';
import 'package:Hvala/theme/HColors.dart';
import 'package:Hvala/theme/HTextStyles.dart';
import 'package:Hvala/utils/favorite_helper.dart';
import 'package:flutter/material.dart';

class SimpleActionsRowButton extends StatefulWidget {
  final Function() onPressedAction;
  final SimpleListItem item;

  const SimpleActionsRowButton(
      {@required this.onPressedAction, @required this.item, Key key})
      : super(key: key);

  @override
  _SimpleActionsRowButtonState createState() => _SimpleActionsRowButtonState();
}

class _SimpleActionsRowButtonState extends State<SimpleActionsRowButton> {
  bool addedToFavorites = false;

  @override
  void initState() {
    super.initState();
    isInFavorites(widget.item).then((value) {
      _setFavorite(value);
    });
  }

  _setFavorite(bool fav) {
    setState(() {
      addedToFavorites = fav;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: SizedBox(
            height: 85,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: RaisedButton(
                onPressed: widget.onPressedAction,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Flexible(
                      flex: 8,
                      child: Text(
                        widget.item.name.toUpperCase(),
                        textAlign: TextAlign.left,
                        style: HTextStyle.buttonRegular(context),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: IconButton(
                          icon: addedToFavorites
                              ? Icon(Icons.favorite)
                              : Icon(Icons.favorite_border),
                          color: HColors.white(),
                          iconSize: 24,
                          onPressed: () {
                            addedToFavorites
                                ? removeFromFavorites(widget.item)
                                : addToFavorites(widget.item);
                            _setFavorite(!addedToFavorites);
                          }),
                    )
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

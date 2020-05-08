import 'package:Hvala/models/model_simple_list_item.dart';
import 'package:Hvala/theme/HColors.dart';
import 'package:Hvala/theme/HTextStyles.dart';
import 'package:Hvala/utils/favorite_helper.dart';
import 'package:flutter/material.dart';

class ExpandedRowButton extends StatefulWidget {
  final Function() onPressedAction;
  final Function() onFavoritePressedAction;
  final SimpleListItem item;

  const ExpandedRowButton(
      {@required this.onPressedAction,
      @required this.onFavoritePressedAction,
      @required this.item,
      Key key})
      : super(key: key);

  @override
  _ExpandedRowButtonState createState() => _ExpandedRowButtonState();
}

class _ExpandedRowButtonState extends State<ExpandedRowButton> {
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
            height: 125,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: RaisedButton(
                onPressed: widget.onPressedAction,
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
                            fit: FlexFit.tight,
                            child: Text(
                              widget.item.name.toUpperCase(),
                              textAlign: TextAlign.left,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
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
                                widget.onFavoritePressedAction();
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
                      flex: 2,
                      child: Text(
                        widget.item.description,
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

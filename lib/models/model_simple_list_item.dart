class SimpleListItem {
  String name;
  String url;
  SimpleListItemType type;

  SimpleListItem(this.name, this.url, this.type);

  @override
  String toString() {
    return name;
  }

  SimpleListItem.fromJson(Map<dynamic, dynamic> data) {
    name = data['Name'];
    url = data['url'];
    String urlType = data['type'];
    if (urlType == "page") {
      type = SimpleListItemType.page;
    } else {
      type = SimpleListItemType.url;
    }
  }
}

enum SimpleListItemType { url, page }

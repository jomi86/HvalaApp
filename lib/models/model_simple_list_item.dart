class SimpleListItem {
  String name;
  String description;
  String url;
  SimpleListItemType type;

  SimpleListItem(this.name, this.description, this.url, this.type);

  @override
  String toString() {
    return name;
  }

  SimpleListItem.fromJson(Map<dynamic, dynamic> data) {
    name = data['name'];
    description = data['description'];
    url = data['url'];
    String urlType = data['type'];
    if (urlType == "phone") {
      type = SimpleListItemType.phone;
    } else {
      type = SimpleListItemType.url;
    }
  }
}

enum SimpleListItemType { url, phone }

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List<Widget> _widgetOptions = <Widget>[
    DonateWidget(),
    HelpWidget(),
    NeedWidget(),
    CallWidget(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar Sample'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.card_giftcard,
              color: Colors.red,
            ),
            title: Text(
              'Donate',
              style: TextStyle(color: Colors.red),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.enhanced_encryption,
              color: Colors.red,
            ),
            title: Text(
              'Help',
              style: TextStyle(color: Colors.red),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_shopping_cart,
              color: Colors.red,
            ),
            title: Text(
              'Need',
              style: TextStyle(color: Colors.red),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_call,
              color: Colors.red,
            ),
            title: Text(
              'Call',
              style: TextStyle(color: Colors.red),
            ),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}

class DonateWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final titles = [
      'MONEY',
      'FOOD',
      'CLOTHES',
      'OTHER',
    ];

    return ListView.builder(
      itemCount: titles.length,
      itemBuilder: (context, index) {
        return Card(
          //                           <-- Card widget
          child: ListTile(
            title: Text(
              titles[index],
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 18.0,
                  letterSpacing: 2.0,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold),
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
            onTap: () {
              print(titles[index]);
            },
          ),
        );
      },
    );
  }
}

class HelpWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final titles = [
      'MONEY',
      'FOOD',
      'CLOTHES',
      'OTHER',
    ];

    return ListView.builder(
      itemCount: titles.length,
      itemBuilder: (context, index) {
        return Card(
          //                           <-- Card widget
          child: ListTile(
            title: Text(
              titles[index],
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 18.0,
                  letterSpacing: 2.0,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold),
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
            onTap: () {
              print(titles[index]);
            },
          ),
        );
      },
    );
  }
}

class NeedWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final titles = [
      'MONEY',
      'FOOD',
      'CLOTHES',
      'OTHER',
    ];

    return ListView.builder(
      itemCount: titles.length,
      itemBuilder: (context, index) {
        return Card(
          //                           <-- Card widget
          child: ListTile(
            title: Text(
              titles[index],
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 18.0,
                  letterSpacing: 2.0,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold),
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
            onTap: () {
              print(titles[index]);
            },
          ),
        );
      },
    );
  }
}

class CallWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final callScreenTitles = [
      'KORONA VIRUS',
      'HITNA POMOĆ',
      'POLICIJA',
      'VATROGASCI',
    ];

    return ListView.builder(
      itemCount: callScreenTitles.length,
      itemBuilder: (context, index) {
        return Card(
          //                           <-- Card widget
          child: ListTile(
            title: Text(
              callScreenTitles[index],
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 18.0,
                  letterSpacing: 2.0,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold),
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
            onTap: () {
              print(callScreenTitles[index]);
            },
          ),
        );
      },
    );
  }
}

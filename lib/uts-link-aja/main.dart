import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Link Aja',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Home Page',
      style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
    ),
    Text(
      'History Page',
      style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
    ),
    Text(
      'Pay Page',
      style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
    ),
    Text(
      'Inbox Page',
      style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
    ),
    Text(
      'Account Page',
      style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
    ),
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
        title: const Text('Link Aja'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Pay',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help),
            label: 'Account',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromARGB(255, 255, 0, 0),
        onTap: _onItemTapped,
        // selectedFontSize:
        //     Theme.of(context).textTheme.caption?.fontSize ?? 14.0,
        // unselectedFontSize:
        //     Theme.of(context).textTheme.caption?.fontSize ?? 12.0,
        // selectedLabelStyle:
        //     Theme.of(context).textTheme.caption?.copyWith(fontWeight: FontWeight.bold),
        // unselectedLabelStyle:
        //     Theme.of(context).textTheme.caption?.copyWith(fontWeight: FontWeight.normal),
        type: BottomNavigationBarType.fixed,
        showSelectedLabels:true,
        showUnselectedLabels:true,
      ),
    );
  }
}

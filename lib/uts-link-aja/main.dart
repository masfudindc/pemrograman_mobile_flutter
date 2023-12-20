// import 'package:flutter/material.dart';
// import 'package:pemrograman_mobile_flutter/uts-link-aja/home.dart';
// import 'package:pemrograman_mobile_flutter/uts-link-aja/history.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       title: 'UTS',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
//         useMaterial3: true,
//       ),
//       debugShowCheckedModeBanner: false,
//       home: const MyApp(),
//     ),
//   );
// }

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   static const tabScreens = [
//     HomePage(),
//     HistoryPage(),
//   ];

//   @override
//   State<MyApp> createState() => _MyAppState();
// }


// // class MyHomePage extends StatefulWidget {
// //   MyHomePage({Key? key}) : super(key: key);

// //   @override
// //   _MyHomePageState createState() => _MyHomePageState();
// // }

// class _MyAppState extends State<MyApp> {

//   int _selectedIndex = 0;
//   static const List<Widget> _widgetOptions = <Widget>[
//   int _tabIndex = 0;
//   final PageController _pageController = PageController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: PageView(
//         controller: _pageController,
//         children: MyApp.tabScreens,
//         onPageChanged: (index) {
//           setState(() {
//             _tabIndex = index;
//           });
//         },
//       ),

//       floatingActionButton: FloatingActionButton(
//         backgroundColor: Colors.red,
//         onPressed: () {},
//         child: const Icon(
//           Icons.qr_code,
//           color: Colors.white,
//           size: 46,
//         ),
//       ),

//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       bottomNavigationBar: BottomNavigationBar(
//         type: BottomNavigationBarType.fixed,
//         currentIndex: _tabIndex,
//         selectedItemColor: Colors.red,
//         unselectedItemColor: Colors.black,
//         showUnselectedLabels: true,
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home_outlined),
//             activeIcon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.file_copy_outlined),
//             activeIcon: Icon(Icons.file_copy),
//             label: 'History',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.analytics),
//             label: 'Pay',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.mail_outline),
//             label: 'Inbox',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person_outline),
//             label: 'Account',
//           ),
//         ],
//         onTap: (index) {
//           if (index > 1) return;
//           setState(() {
//             _tabIndex = index;
//             _pageController.animateToPage(
//               _tabIndex,
//               duration: const Duration(milliseconds: 300),
//               curve: Curves.decelerate,
//             );
//           });
//         },
//       ),
//     );
//   }
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _selectedIndex = 0;
//   static const List<Widget> _widgetOptions = <Widget>[
//     Text(
//       'Home Page',
//       style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
//     ),
//     Text(
//       'History Page',
//       style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
//     ),
//     Text(
//       'Pay Page',
//       style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
//     ),
//     Text(
//       'Inbox Page',
//       style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
//     ),
//     Text(
//       'Account Page',
//       style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
//     ),
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

  

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text('Link Aja'),
// //       ),
// //       body: Center(
// //         child: _widgetOptions.elementAt(_selectedIndex),
// //       ),
// //       floatingActionButton: FloatingActionButton(
// //         onPressed: () {},
// //         backgroundColor: Colors.red,
// //         elevation:2.0,
        
// //         child: const Icon(Icons.qr_code_scanner, color: Colors.white),
// //       ),

// //   floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

// //       bottomNavigationBar: BottomNavigationBar(
// //         items: const <BottomNavigationBarItem>[
// //           BottomNavigationBarItem(
// //             icon: Icon(Icons.home),
// //             label: 'Home',
// //           ),
// //           BottomNavigationBarItem(
// //             icon: Icon(Icons.history),
// //             label: 'History',
// //           ),
// //           BottomNavigationBarItem(
// //             icon: Icon(Icons.square),
// //             label: '',
// //           ),
// //           BottomNavigationBarItem(
// //             icon: Icon(Icons.inbox),
// //             label: 'Inbox',
// //           ),
// //           BottomNavigationBarItem(
// //             icon: Icon(Icons.person),
// //             label: 'Account',
// //           ),
// //         ],
// //         currentIndex: _selectedIndex,
// //         selectedItemColor: const Color.fromARGB(255, 255, 0, 0),
// //         onTap: _onItemTapped,
// //         // selectedFontSize:
// //         //     Theme.of(context).textTheme.caption?.fontSize ?? 14.0,
// //         // unselectedFontSize:
// //         //     Theme.of(context).textTheme.caption?.fontSize ?? 12.0,
// //         // selectedLabelStyle:
// //         //     Theme.of(context).textTheme.caption?.copyWith(fontWeight: FontWeight.bold),
// //         // unselectedLabelStyle:
// //         //     Theme.of(context).textTheme.caption?.copyWith(fontWeight: FontWeight.normal),
// //         type: BottomNavigationBarType.fixed,
// //         showSelectedLabels:true,
// //         showUnselectedLabels:true,
// //       ),
// //     );
// //   }
// // }

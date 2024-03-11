//  import 'package:flutter/material.dart';
// import 'package:unipool/admin.dart';
// import 'package:unipool/screens/Side_navbar.dart';
// import 'package:unipool/screens/navigation_bar.dart';
// // Import User_Screen
//
// class BottomNavBarForNav extends StatefulWidget {
//   const BottomNavBarForNav({Key? key}) : super(key: key);
//
//   @override
//   State<BottomNavBarForNav> createState() => _BottomNavBarForNavState();
// }
//
// class _BottomNavBarForNavState extends State<BottomNavBarForNav> {
//   int _currentIndex = 0;
//
//   List<Widget> _widgetOptions = [
//     HomeScreen(), // Provide the appropriate widget for User_Screen
//     // Add more widgets for other BottomNavigationBarItems as needed
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//       appBar: AppBar(
//         title: Text('UNIPOOL'),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: _widgetOptions[_currentIndex], // Wrap with Expanded
//           ),
//         ],
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _currentIndex,
//         onTap: (index) {
//           setState(() {
//             _currentIndex = index;
//           });
//         },
//         type: BottomNavigationBarType.fixed,
//         backgroundColor: Colors.amber,
//         selectedFontSize: 25,
//         unselectedFontSize: 20,
//         items: [
//           BottomNavigationBarItem(
//             icon: Image.asset('images/unipoollogo.jpg', width: 30, height: 30),
//             label: 'car',
//             backgroundColor: Colors.blue,
//           ),
//           BottomNavigationBarItem(
//             icon: Image.asset('images/unipoollogo.jpg', width: 30, height: 30),
//             label: 'people',
//             backgroundColor: Colors.red,
//           ),
//           BottomNavigationBarItem(
//             icon: Image.asset('images/unipoollogo.jpg', width: 30, height: 30),
//             label: '+',
//             backgroundColor: Colors.red,
//           ),
//           BottomNavigationBarItem(
//             icon: Image.asset('images/unipoollogo.jpg', width: 30, height: 30),
//             label: 'calender',
//             backgroundColor: Colors.red,
//           ),
//           // Add more BottomNavigationBarItems as needed
//         ],
//       ),
//     );
//   }
// }

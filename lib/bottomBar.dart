import 'package:flatform/pages/favorites_page.dart';
import 'package:flatform/pages/home_page.dart';
import 'package:flatform/pages/newAnnouncement_page.dart';
import 'package:flatform/pages/profile_page.dart';
import 'package:flatform/pages/search_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({
    Key key,
  }) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12), topRight: Radius.circular(12)),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              spreadRadius: 3,
            ),
          ],
          gradient: LinearGradient(colors: [Colors.grey[850], Colors.black87]),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: SvgPicture.asset(
                'asset/icons/home.svg',
                color: Colors.white,
                width: 25,
                height: 25,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomePage(),
                  ),
                );
              },
            ),
            IconButton(
              icon: SvgPicture.asset(
                'asset/icons/search.svg',
                color: Colors.white,
                width: 25,
                height: 25,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => SearchPage(),
                  ),
                );
              },
            ),
            IconButton(
              icon: SvgPicture.asset(
                'asset/icons/plus.svg',
                color: Colors.white,
                width: 25,
                height: 25,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => NewAnnouncementPage(),
                  ),
                );
              },
            ),
            IconButton(
              icon: SvgPicture.asset(
                'asset/icons/like.svg',
                color: Colors.white,
                width: 25,
                height: 25,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => FavoritesPage(),
                  ),
                );
              },
            ),
            IconButton(
              icon: SvgPicture.asset(
                'asset/icons/user.svg',
                color: Colors.white,
                width: 25,
                height: 25,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => ProfilePage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

// class BottomBar extends StatefulWidget {
//   const BottomBar({
//     Key key,
//   }) : super(key: key);

//   @override
//   _BottomBarState createState() => _BottomBarState();
// }

// class _BottomBarState extends State<BottomBar> {
//   int _currentIndex = 0;
//   final List<Widget> _children = [
//     HomePage(),
//     SearchPage(),
//     NewAnnouncementPage(),
//     FavoritesPage(),
//     ProfilePage(),
//     // FlatformPage1(),
//     // FlatformPage2(),
//   ];

// void onTappedBar(int index) {
//   setState(() {
//     _currentIndex = index;
//   });
// }
//   // bool pressed = true;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body:  _children[_currentIndex],
//       bottomNavigationBar: BottomAppBar(
//         child: Container(
//           height: 60,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.only(
//                 topLeft: Radius.circular(15), topRight: Radius.circular(15)),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.black12,
//                 spreadRadius: 3,
//               ),
//             ],
//             gradient:
//                 LinearGradient(colors: [Colors.grey[850], Colors.black87]),
//           ),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: <Widget>[
//   IconButton(
//     onPressed: () {
//       setState(() {
//         pressed = !pressed;
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//               builder: (BuildContext context) => HomePage()),
//         );
//       });
//     },
//     icon: pressed
//         ? SvgPicture.asset(
//             'asset/icons/home.svg',
//             color: Colors.white,
//             width: 25,
//             height: 25,
//           )
//         : SvgPicture.asset(
//             'asset/icons/home1.svg',
//             color: Colors.white,
//             width: 25,
//             height: 25,
//           ),
//   ),
//   IconButton(
//     onPressed: () {
//       setState(() {
//         pressed = !pressed;
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//               builder: (BuildContext context) => SearchPage()),
//         );
//       });
//     },
//     icon: pressed
//         ? SvgPicture.asset(
//             'asset/icons/search.svg',
//             color: Colors.white,
//             width: 25,
//             height: 25,
//           )
//         : SvgPicture.asset(
//             'asset/icons/search1.svg',
//             color: Colors.white,
//             width: 25,
//             height: 25,
//           ),
//   ),
//   IconButton(
//     onPressed: () {
//       setState(() {
//         pressed = !pressed;
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//               builder: (BuildContext context) =>
//                   NewAnnouncementPage()),
//         );
//       });
//     },
//     icon: pressed
//         ? SvgPicture.asset(
//             'asset/icons/plus.svg',
//             color: Colors.white,
//             width: 25,
//             height: 25,
//           )
//         : SvgPicture.asset(
//             'asset/icons/plus1.svg',
//             color: Colors.white,
//             width: 25,
//             height: 25,
//           ),
//   ),
//   IconButton(
//     onPressed: () {
//       setState(() {
//         pressed = !pressed;
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//               builder: (BuildContext context) => FavoritesPage()),
//         );
//       });
//     },
//     icon: pressed
//         ? SvgPicture.asset(
//             'asset/icons/like.svg',
//             color: Colors.white,
//             width: 25,
//             height: 25,
//           )
//         : SvgPicture.asset(
//             'asset/icons/like1.svg',
//             color: Colors.white,
//             width: 25,
//             height: 25,
//           ),
//   ),
//   IconButton(
//     onPressed: () {
//       setState(() {
//         pressed = !pressed;
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//               builder: (BuildContext context) => ProfilePage()),
//         );
//       });
//     },
//     icon: pressed
//         ? SvgPicture.asset(
//             'asset/icons/user.svg',
//             color: Colors.white,
//             width: 25,
//             height: 25,
//           )
//         : SvgPicture.asset(
//             'asset/icons/user1.svg',
//             color: Colors.white,
//             width: 25,
//             height: 25,
//           ),
//   ),
// ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class BottomBar extends StatefulWidget {
//   const BottomBar({
//     Key key,
//   }) : super(key: key);

//   @override
//   _BottomBarState createState() => _BottomBarState();
// }

// class _BottomBarState extends State<BottomBar> {
//   int _currentIndex = 0;
//   final List<Widget> _children = [
//     HomePage(),
//     SearchPage(),
//     NewAnnouncementPage(),
//     FavoritesPage(),
//     ProfilePage(),
//     // FlatformPage1(),
//     // FlatformPage2(),
//   ];

//   void onTappedBar(int index) {
//     setState(() {
//       _currentIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _children[_currentIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         iconSize: 25,
//         showSelectedLabels: false,
//         showUnselectedLabels: false,
//         currentIndex: _currentIndex,
//         onTap: (int index) {
//           setState(
//             () {
//               this._currentIndex = index;
//             },
//           );
//           // _navigateToScreens(index);
//         },
//         type: BottomNavigationBarType.shifting,
//         items: [
//           BottomNavigationBarItem(
//             icon: _currentIndex == 0
//                 ? new SvgPicture.asset('asset/icons/home.svg')
//                 : new SvgPicture.asset('asset/icons/home1.svg'),
//           ),
//           BottomNavigationBarItem(
//             icon: _currentIndex == 1
//                 ? new SvgPicture.asset('asset/icons/search.svg')
//                 : new SvgPicture.asset('asset/icons/search1.svg'),
//           ),
//           BottomNavigationBarItem(
//             icon: _currentIndex == 2
//                 ? new SvgPicture.asset('asset/icons/plus.svg')
//                 : new SvgPicture.asset('asset/icons/plus1.svg'),
//           ),
//           BottomNavigationBarItem(
//             icon: _currentIndex == 3
//                 ? new SvgPicture.asset('asset/icons/like.svg')
//                 : new SvgPicture.asset('asset/icons/like1.svg'),
//           ),
//           BottomNavigationBarItem(
//             icon: _currentIndex == 3
//                 ? new SvgPicture.asset('asset/icons/user.svg')
//                 : new SvgPicture.asset('asset/icons/user1.svg'),
//           ),
//         ],

//         selectedItemColor: Colors.black,
//         unselectedItemColor: Colors.white,
//         // onTap: _onItemTapped,
//       ),
//     );
//   }
// }

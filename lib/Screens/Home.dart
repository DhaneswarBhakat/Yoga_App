//Main Screen page
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:yoga_app/Screens/CustomAppBar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {

  late AnimationController _animationController;
  late Animation _colorTween, _homeTween,_yogaTween,_iconTween,_drawerTween;
  late AnimationController _textAnimationController;


  @override
  void initState() {
    _animationController = AnimationController(vsync: this,duration: Duration(seconds: 0));
    _colorTween = ColorTween(begin: Colors.transparent, end: Colors.white).animate(_animationController);
    _iconTween = ColorTween(begin: Colors.white, end: Colors.lightBlue).animate(_animationController);
    _drawerTween = ColorTween(begin: Colors.white, end: Colors.black).animate(_animationController);
    _homeTween = ColorTween(begin: Colors.white, end: Colors.blue).animate(_animationController);
    _yogaTween = ColorTween(begin: Colors.white, end: Colors.blue).animate(_animationController);
    _textAnimationController = AnimationController(vsync: this, duration: Duration(seconds: 0));
    super.initState();
  }


  bool scrollListner(ScrollNotification scrollNotification){
    bool scroll = false;
    if(scrollNotification.metrics.axis == Axis.vertical){
      _animationController.animateTo(scrollNotification.metrics.pixels/80);
      _textAnimationController.animateTo(scrollNotification.metrics.pixels);
      return scroll = true;
    }
      return scroll;
  }

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: Drawer(),
      backgroundColor: Colors.white,
      body: NotificationListener(
        onNotification: scrollListner,
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              child: Stack(
                children: [
                  SingleChildScrollView(
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            Container(height: 1000, color: Colors.blue,),
                            Container(height: 1000, color: Colors.green,),
                            Container(height: 1000, color: Colors.blue,),
                          ],
                        )
                      ],
                    ),
                  ),
                  CustomAppBar(animationController: _animationController, colorTween: _colorTween, drawerTween: _drawerTween, homeTween: _homeTween, iconTween: _iconTween, onPressed: (){scaffoldKey.currentState?.openDrawer();}, yogaTween: _yogaTween)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         title: Text("Indian Youga App"),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 25),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Column(
//                     children: [
//                       Text("1"),
//                       Text("Strick"),
//                     ],
//                   ),
//                   Column(
//                     children: [
//                       Text("1"),
//                       Text("Strick"),
//                     ],
//                   )
//                 ],
//               ),
//             ),
//             Divider(thickness: 3, indent: 20, endIndent: 20,),
//             Container(
//               padding: EdgeInsets.all(25),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text("Yoga For All"),
//                     Padding(
//                       padding: const EdgeInsets.symmetric( vertical: 5),
//                       child: Container(
//                         color: Colors.blueGrey,
//                         height: 150,
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.symmetric( vertical: 5),
//                       child: Container(
//                         color: Colors.blueGrey,
//                         height: 150,
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             Container(
//               padding: EdgeInsets.all(25),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text("Yoga For Students"),
//                   Padding(
//                     padding: const EdgeInsets.symmetric( vertical: 5),
//                     child: Container(
//                       color: Colors.blueGrey,
//                       height: 150,
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.symmetric( vertical: 5),
//                     child: Container(
//                       color: Colors.blueGrey,
//                       height: 150,
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.symmetric( vertical: 5),
//                     child: Container(
//                       color: Colors.blueGrey,
//                       height: 150,
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.symmetric( vertical: 5),
//                     child: Container(
//                       color: Colors.blueGrey,
//                       height: 150,
//                     ),
//                   )
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

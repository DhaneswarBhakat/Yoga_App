import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Indian Youga App"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text("1"),
                      Text("Strick"),
                    ],
                  ),
                  Column(
                    children: [
                      Text("1"),
                      Text("Strick"),
                    ],
                  )
                ],
              ),
            ),
            Divider(thickness: 20, indent: 20, endIndent: 20,),
            Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Yoga For All"),
                    Padding(
                      padding: const EdgeInsets.symmetric( vertical: 5),
                      child: Container(
                        color: Colors.blueGrey,
                        height: 150,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric( vertical: 5),
                      child: Container(
                        color: Colors.blueGrey,
                        height: 150,
                      ),
                    )
                  ],
                ),
              ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Yoga For Students"),
                  Padding(
                    padding: const EdgeInsets.symmetric( vertical: 5),
                    child: Container(
                      color: Colors.blueGrey,
                      height: 150,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric( vertical: 5),
                    child: Container(
                      color: Colors.blueGrey,
                      height: 150,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric( vertical: 5),
                    child: Container(
                      color: Colors.blueGrey,
                      height: 150,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric( vertical: 5),
                    child: Container(
                      color: Colors.blueGrey,
                      height: 150,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

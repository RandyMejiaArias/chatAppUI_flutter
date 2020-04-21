import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24),
        color: Color(0xff171719),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                SizedBox(height: 120.0),
                Text(
                  'Messages',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w600
                  )
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color(0xff444446),
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: Icon(
                    Icons.add,
                    color: Colors.white
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class StoryTile extends StatelessWidget {
  const StoryTile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    );
  }
}
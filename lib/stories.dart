import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  final stories = Expanded(
      child: new ListView.builder(
    itemBuilder: (context, index) => new Stack(
      alignment: Alignment.bottomRight,
      children: <Widget>[
        new Container(
          width: 60.0,
          height: 60.0,
          decoration: new BoxDecoration(
            shape: BoxShape.circle,
            image: new DecorationImage(
              image: new NetworkImage(
                  "https://www.bollywoodhungama.com/wp-content/uploads/2020/12/Katrina-Kaif-champions-the-cause-of-the-right-to-education-urges-all-to-do-their-bit-in-building-classrooms-for-underprivileged-children-at-a-school-in-Madurai-.jpg"),
            ),
          ),
          margin: const EdgeInsets.symmetric(horizontal: 8.0),
        ),
      ],
    ),
    scrollDirection: Axis.horizontal,
    itemCount: 5,
  ));
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

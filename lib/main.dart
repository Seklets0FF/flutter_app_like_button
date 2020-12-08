import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

void main() => runApp(MyLikes());

class MyLikes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Button Like'),
      ),
      body: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          LikeButton(
            size: 50.0,
            circleColor: CircleColor(start: Colors.red, end: Colors.yellow),
            bubblesColor: BubblesColor(
                dotPrimaryColor: Colors.red,
                dotSecondaryColor: Colors.yellow,
                dotLastColor: Colors.green,
                dotThirdColor: Colors.blue),
            likeBuilder: (bool isLiked) {
              return Icon(
                Icons.subscriptions,
                color: isLiked ? Colors.red : Colors.grey,
                size: 50.0,
              );
            },
            likeCount: 99,
            countBuilder: (int count, bool isLiked, String txt) {
              var color = isLiked ? Colors.red : Colors.grey;
              Widget result;
              if (count == 0) {
                print(count);
                result = Text(
                  'Подписаться',
                  style: TextStyle(color: color, fontSize: 20.0),
                );
              } else {
                result = Text(
                  txt,
                  style: TextStyle(color: color, fontSize: 35.0),
                );
              }
              return result;
            },
          ),
          LikeButton(
            size: 50.0,
            circleColor: CircleColor(start: Colors.blue, end: Colors.blueGrey),
            bubblesColor: BubblesColor(
                dotPrimaryColor: Colors.red,
                dotSecondaryColor: Colors.yellow,
                dotLastColor: Colors.green,
                dotThirdColor: Colors.blue),
            likeBuilder: (bool isLiked) {
              return Icon(
                Icons.thumb_up,
                color: isLiked ? Colors.red : Colors.grey,
                size: 50.0,
              );
            },
            likeCount: 0,
            countBuilder: (int count, bool isLiked, String txt) {
              var color = isLiked ? Colors.red : Colors.grey;
              Widget result;
              if (count == 0) {
                print(count);
                result = Text(
                  'Класс',
                  style: TextStyle(color: color, fontSize: 20.0),
                );
              } else {
                result = Text(
                  txt,
                  style: TextStyle(color: color, fontSize: 35.0),
                );
              }
              return result;
            },
          ),
        ],
      )),
    ));
  }
}

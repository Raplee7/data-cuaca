import 'package:flutter/material.dart';

class TimeVideo extends StatelessWidget {
  final String? lamaVideo;
  const TimeVideo({Key? key, this.lamaVideo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('$lamaVideo', style: TextStyle(color: Colors.white),),
      padding: EdgeInsets.all(7),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(.5),
        borderRadius: BorderRadius.circular(30)
      ),
    );
  }
}

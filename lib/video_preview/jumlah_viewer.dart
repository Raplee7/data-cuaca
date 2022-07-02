import 'package:flutter/material.dart';

class JumlahViewer extends StatelessWidget {
  final String? jmlViewer;
  const JumlahViewer({this.jmlViewer, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.remove_red_eye, color: Colors.white, size: 20,),
          Text(' $jmlViewer', style: TextStyle(color: Colors.white, fontSize: 12), ),
        ],
        ),
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(20)
        ),
    );
  }
}

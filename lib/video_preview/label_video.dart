import 'package:flutter/material.dart';

class LabelVideo extends StatelessWidget {
  String? judul, pengirim, subscribers;

  LabelVideo({Key? key, this.judul, this.pengirim, this.subscribers})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text('$judul',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          Row(
            children: [
              Icon(Icons.check_circle, color: Colors.red, size: 13,),
              SizedBox(width: 6,),
              Text('$pengirim . $subscribers',
                style: TextStyle(color: Colors.grey),),
              ],
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class TombolKapsul extends StatelessWidget {
  final String teks;
  const TombolKapsul(this.teks,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0), 
      child: OutlinedButton(
        onPressed: () {},
        child: Text(
          teks,
          style: TextStyle(color: Colors.red),
        ),
        style: OutlinedButton.styleFrom(
            primary: Colors.red,
            side: BorderSide(color: Colors.red),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30))),
      ),
    );
  }
}

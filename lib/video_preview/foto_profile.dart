import 'package:flutter/material.dart';

class FotoProfile extends StatelessWidget {
  final Image foto;
  const FotoProfile(this.foto, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(100),
      child: foto,
    );
  }
}

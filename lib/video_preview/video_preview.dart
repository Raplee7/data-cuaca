import 'package:belajarui/video_preview/foto_profile.dart';
import 'package:belajarui/video_preview/jumlah_viewer.dart';
import 'package:belajarui/video_preview/label_video.dart';
import 'package:belajarui/video_preview/time_video.dart';
import 'package:flutter/material.dart';

class VideoPreview extends StatelessWidget {
  final Image gambar, foto;
  final String? jmlViewer;
  final String? lamaVideo;
  final String? judul, pengirim, subscribe;
  const VideoPreview({Key? key,
    required this.gambar,
    required this.foto,
    required this.jmlViewer,
    required this.lamaVideo,
    required this.judul,
    required this.pengirim,
    required this.subscribe,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal:10),
                width: double.infinity,
                height: 200,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: gambar,
                ),
              ),
            ),
            Positioned(
              top: 10,
              left: 30,
              child: JumlahViewer(jmlViewer: jmlViewer,)
              ),
            Positioned(
              bottom: 10,
              right: 30,
              child: TimeVideo(lamaVideo: lamaVideo,))
          ],

        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 7, 20, 15),
          child: Row(
            children: [
              FotoProfile(foto),
              LabelVideo(
                judul: judul,
                pengirim: pengirim,
                subscribers: subscribe,
              )
            ],
          ),
        )
      ]
    );
  }
}

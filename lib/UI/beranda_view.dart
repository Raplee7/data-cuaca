import 'package:belajarui/video_preview/video_preview.dart';
import 'package:belajarui/widgets.dart';
import 'package:flutter/material.dart';

class BerandaView extends StatelessWidget {
  const BerandaView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.grey,
        leading: Image.asset('assets/icons/menu.png'),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/icons/logo.png'),
            SizedBox(
              width: 5,
            ),
            Text('Youtube')
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: Image.asset('assets/icons/video.png')),
          IconButton(
              onPressed: () {}, icon: Image.asset('assets/icons/search.png'))
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    TombolKapsul('High Tech'),
                    TombolKapsul('Cartoon'),
                    TombolKapsul('Live'),
                    TombolKapsul('Music'),
                    TombolKapsul('Game'),
                    TombolKapsul('Animal'),
                  ],
                )),
          ),
          Expanded(
              child: SingleChildScrollView(
            child: Column(children: [
              VideoPreview(
                  gambar: Image.asset(
                    'assets/v1.jpg',
                    fit: BoxFit.cover,
                  ),
                  foto: Image.asset(
                    'assets/foto1.jpg',
                    width: 40,
                    height: 40,
                  ),
                  judul: 'Judul Video ke 1',
                  jmlViewer: '999 rb',
                  lamaVideo: 'Live',
                  pengirim: 'orang1',
                  subscribe: '100 jt Subscribers',),

                  
              VideoPreview(
                  gambar: Image.asset(
                    'assets/v2.jpg',
                    fit: BoxFit.cover,
                  ),
                  foto: Image.asset(
                    'assets/foto2.jpg',
                    width: 40,
                    height: 40,
                  ),
                  judul: 'Judul Video ke 2',
                  jmlViewer: '888 rb',
                  lamaVideo: 'Live',
                  pengirim: 'orang2',
                  subscribe: '10 jt Subscribers',),

                  
              VideoPreview(
                  gambar: Image.asset(
                    'assets/v3.jpg',
                    fit: BoxFit.cover,
                  ),
                  foto: Image.asset(
                    'assets/foto3.jpg',
                    width: 40,
                    height: 40,
                  ),
                  judul: 'Judul Video ke 3',
                  jmlViewer: '1 jt',
                  lamaVideo: 'Live',
                  pengirim: 'orang3',
                  subscribe: '99 jt Subscribers',),

                  
              VideoPreview(
                  gambar: Image.asset(
                    'assets/v4.jpg',
                    fit: BoxFit.cover,
                  ),
                  foto: Image.asset(
                    'assets/foto4.jpg',
                    width: 40,
                    height: 40,
                  ),
                  judul: 'Judul Video ke 4',
                  jmlViewer: '666 rb',
                  lamaVideo: 'Live',
                  pengirim: 'orang4',
                  subscribe: '69 jt Subscribers',),

                  
            ]),
          ))
        ],
      ),
    );
  }
}

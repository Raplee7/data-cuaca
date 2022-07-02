import 'package:belajarui/provider/cuaca_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CuacaView extends StatelessWidget {
  const CuacaView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => CuacaProvider(),
        builder: (context, w) {
          context.read<CuacaProvider>().ambilData('Pontianak');
          return Scaffold(
            appBar: AppBar(
              title: Text('Cuaca Pontianak'),
            ),
            body: ListView(
              children: [
                Consumer<CuacaProvider>(builder: (context, value, child) {
                  return Column(
                    children: [
                      for (var n in value.data)
                      Card(
                        child: ListTile(
                          leading: Image.network(
                              'http://openweathermap.org/img/wn/${n['weather'][0]['icon']}.png'),
                          title: Text('${n['dt_txt']}'),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('${n['weather'][0]['description']}'),
                              Text(
                                  '${(n['main']['temp_main'] - 273.15).toStringAsPrecision(3)}'),
                            ],
                          ),
                        ),
                      )
                    ],
                  );
                })
              ],
            ),
          );
        });
  }
}

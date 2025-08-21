import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        _plantsCard(context),
        _plantsCard(context),
        _plantsCard(context),
      ],
    ));
  }

  Widget _plantsCard(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 125,
        child: Card(
          child: Row(children: <Widget>[
            Container(
                height: 125,
                width: 100,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    'https://images.unsplash.com/photo-1501004318641-b39e6451bec6',
                    fit: BoxFit.cover,
                  ),
                )),
            SizedBox(
              width: 26,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('planta',
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Quicksand',
                        color: Colors.brown,
                        fontWeight: FontWeight.w500)),
                SizedBox(
                  height: 4,
                ),
                Container(
                  height: 1,
                  width: 95,
                  color: Colors.orange,
                ),
                Text('Edgar hugo',
                    style: TextStyle(fontSize: 16, fontFamily: 'Quicksand')),
                SizedBox(
                  height: 4,
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}

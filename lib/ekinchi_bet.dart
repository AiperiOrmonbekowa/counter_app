import 'package:flutter/material.dart';

import 'counter_app.dart';

class EkinchiBet extends StatelessWidget {
  int san;
  int San = 0;
  EkinchiBet({Key? key, required this.san}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tapshyrma 02'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            Navigator.pop(
              context,
              MaterialPageRoute(
                builder: (context) => const MeninTirkemem(),
              ),
            );
          },
          child: Container(
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(10)),
            width: 300,
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'san:',
                  style: TextStyle(fontSize: 24),
                ),
                Text(
                  '$san',
                  style: const TextStyle(fontSize: 24),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'ekinchi_bet.dart';

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'birinchi Tirkeme',
      theme: ThemeData(primaryColor: Colors.black),
      home: const MeninTirkemem(),
    );
  }
}

class MeninTirkemem extends StatefulWidget {
  const MeninTirkemem({super.key});

  @override
  State<MeninTirkemem> createState() => _MeninTirkememState();
}

class _MeninTirkememState extends State<MeninTirkemem> {
  int san = 0;
  void koshuu() {
    san++;
    setState(() {});
  }

  void aluu() {
    san--;
    setState(() {});
  }

  void jyiyntyk() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tapshyrma 01'),
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EkinchiBet(san: san),
                  ),
                );
              },
              child: Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                    color: const Color(0xffBDBCBF),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'san:',
                      style: TextStyle(fontSize: 24.0),
                    ),
                    Text(
                      '$san',
                      style: const TextStyle(fontSize: 24.0),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    aluu();
                  },
                  child: Container(
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(
                        color: const Color(0xff005EA6),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Icon(
                      Icons.remove,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(width: 50),
                InkWell(
                  onTap: () {
                    koshuu();
                  },
                  child: Container(
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(
                        color: const Color(0xff005EA6),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

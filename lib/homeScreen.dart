import 'package:flutter/material.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double widthset() {
      if (MediaQuery.of(context).size.width < 800) {
        return MediaQuery.of(context).size.width / 5;
      } else {
        return MediaQuery.of(context).size.width;
      }
    }

    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
                height: MediaQuery.of(context).size.height / 3,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Stack(children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 2,
                    width: MediaQuery.of(context).size.width,
                  ),
                  Positioned(
                      top: 20,
                      left: MediaQuery.of(context).size.width / 2.5,
                      child: Container(
                        height: 50,
                        width: widthset(),
                        color: Colors.amber,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(children: const [
                            Icon(Icons.brightness_1_outlined),
                            Icon(Icons.refresh),
                          ]),
                        ),
                      )),
                  const Positioned(
                      top: 100,
                      right: 20,
                      child: Text(
                        '308 x 42',
                        style: TextStyle(color: Colors.black),
                      )),
                  const Positioned(
                      top: 150,
                      right: 20,
                      child: Text(
                        '12,936',
                        style: TextStyle(color: Colors.black),
                      ))
                ])),
            Container(
              height: ((MediaQuery.of(context).size.height) * (2 / 3)) - 16,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Text(
                          'A.C',
                          style: TextStyle(
                            color: Colors.green,
                          ),
                        ),
                        Text(
                          '%',
                          style: TextStyle(color: Colors.green),
                        ),
                        Text(
                          '%',
                          style: TextStyle(color: Colors.green),
                        ),
                        Text(
                          '/',
                          style: TextStyle(color: Colors.red),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Text('7'),
                        Text('8'),
                        Text('9'),
                        Text(
                          'X',
                          style: TextStyle(color: Colors.red),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Text('4'),
                        Text('5'),
                        Text('6'),
                        Text(
                          '+',
                          style: TextStyle(color: Colors.red),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Text('1'),
                        Text('2'),
                        Text('3'),
                        Text(
                          '-',
                          style: TextStyle(color: Colors.red),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Text('0'),
                        Text(
                          '.',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Icon(Icons.refresh),
                        Text(
                          '=',
                          style: TextStyle(color: Colors.red),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}

import 'package:flutter/material.dart';
import 'difficulty.dart';

class Task extends StatefulWidget {
  final String task;
  final String photo;
  final int hardShip;
  const Task(
      {required this.task,
      required this.photo,
      required this.hardShip,
      super.key});

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int nivel = 0;
  int maestria = 0;
  Color cor = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                color: cor,
                borderRadius: BorderRadius.circular(8),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black38,
                      blurRadius: 4,
                      spreadRadius: 2,
                      offset: Offset(6, 4))
                ]),
            height: 140,
          ),
          Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFF0F0F0),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                  ),
                ),
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.black54,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                        ),
                      ),
                      width: 72,
                      height: 100,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(8),
                        ),
                        child: Image.asset(
                          widget.photo,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.task,
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                overflow: TextOverflow.ellipsis),
                          ),
                          Difficulty(difficultyLevel: widget.hardShip),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 4),
                      child: SizedBox(
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {
                            double valor = (nivel / widget.hardShip) / 10;
                            if (valor == 1) {
                              setState(() {
                                nivel = 0;
                                maestria++;
                                if (maestria == 1) {
                                  cor = Colors.lime;
                                } else if (maestria == 2) {
                                  cor = Colors.yellow;
                                } else if (maestria == 3) {
                                  cor = Colors.orangeAccent;
                                } else if (maestria == 4) {
                                  cor = Colors.red;
                                } else {
                                  cor = Colors.black;
                                }
                              });
                            } else {
                              setState(() {
                                nivel++;
                              });
                            }
                          },
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.blue),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            iconColor: MaterialStateProperty.all(Colors.white),
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.arrow_drop_up),
                              Text(
                                'UP',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 250,
                      child: LinearProgressIndicator(
                        value: (widget.hardShip > 0)
                            ? (nivel / widget.hardShip) / 10
                            : 1,
                        color: Colors.blue[900],
                        backgroundColor: Colors.white,
                      ),
                    ),
                    Text(
                      'Nivel $nivel',
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

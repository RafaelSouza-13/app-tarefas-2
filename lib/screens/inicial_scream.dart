import 'package:flutter/material.dart';
import '../components/task.dart';
import 'form.dart';

class InicialScream extends StatefulWidget {
  const InicialScream({super.key});

  @override
  State<InicialScream> createState() => _InicialScreamState();
}

class _InicialScreamState extends State<InicialScream> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            'Tarefas',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: ListView(
          children: const [
            Task(
              task: 'Aprendendo flutter',
              photo: 'assets/images/flutter.png',
              hardShip: 4,
            ),
            Task(
              task: 'Aprender a desenhar',
              photo: 'assets/images/desenhar.jpg',
              hardShip: 3,
            ),
            Task(
              task: 'Aprender django',
              photo: 'assets/images/dj.png',
              hardShip: 4,
            ),
            Task(
              task: 'Aprender a cozinhar',
              photo: 'assets/images/cozinhar.jpg',
              hardShip: 3,
            ),
            Task(
              task: 'Aprender a fazer drinks',
              photo: 'assets/images/drink.jpg',
              hardShip: 2,
            ),
            Task(
              task: 'ler mais',
              photo: 'assets/images/livro.jpeg',
              hardShip: 3,
            ),
            Task(
              task: 'Jogar video game',
              photo: 'assets/images/controle.jpg',
              hardShip: 1,
            ),
            SizedBox(
              height: 80,
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton.small(
          backgroundColor: Colors.blue,
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FormScreem(),
                ));
          },
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ));
  }
}

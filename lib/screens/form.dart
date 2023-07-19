import 'package:flutter/material.dart';

class FormScreem extends StatefulWidget {
  const FormScreem({super.key});

  @override
  State<FormScreem> createState() => _FormScreemState();
}

class _FormScreemState extends State<FormScreem> {
  TextEditingController nameControler = TextEditingController();
  TextEditingController difficultyControler = TextEditingController();
  TextEditingController imageControler = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Formulario',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black38,
            border: Border.all(color: Colors.black, width: 2),
            borderRadius: BorderRadius.circular(8),
          ),
          height: 650,
          width: 375,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      labelStyle: (TextStyle(fontSize: 20)),
                      labelText: 'Nome',
                      border: OutlineInputBorder(),
                      hintText: 'ex: Ler um livro',
                      hintStyle: TextStyle(color: Colors.black26),
                      filled: true,
                      fillColor: Colors.white70,
                    ),
                    controller: nameControler,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        labelText: 'Dificuldade',
                        labelStyle: (TextStyle(fontSize: 20)),
                        border: OutlineInputBorder(),
                        hintText: 'Selecione um numero de 1 a 5',
                        hintStyle: TextStyle(color: Colors.black26),
                        filled: true,
                        fillColor: Colors.white70),
                    controller: difficultyControler,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    onChanged: (text) {
                      setState(() {});
                    },
                    decoration: const InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      labelText: 'Imagem',
                      labelStyle: (TextStyle(fontSize: 20)),
                      border: OutlineInputBorder(),
                      hintText: 'url de uma imagem',
                      hintStyle: TextStyle(color: Colors.black26),
                      filled: true,
                      fillColor: Colors.white70,
                    ),
                    controller: imageControler,
                  ),
                ),
                Container(
                  height: 100,
                  width: 72,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    border: Border.all(width: 2, color: Colors.blue),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      imageControler.text,
                      errorBuilder: (BuildContext context, Object exception,
                          StackTrace? stackTrace) {
                        return Image.asset('assets/images/nophoto.png');
                      },
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Adicionar'),
                )
              ]),
        ),
      ),
    );
  }
}

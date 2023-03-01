import 'package:flutter/material.dart';

class MultiplyScreen extends StatefulWidget {
  const MultiplyScreen({super.key});

  @override
  State<MultiplyScreen> createState() => _MultiplyScreenState();
}

class _MultiplyScreenState extends State<MultiplyScreen> {
  int numero1 = 0;
  int numero2 = 0;
  int resul = 0;

  void incrementar() {
    numero1++;
    setState(() {});
  }

  void decrementar() {
    numero1--;
    setState(() {});
  }

  void reiniciar() {
    numero1 = 0;
    setState(() {});
  }

//2do numero
  void incrementar2() {
    numero2++;
    setState(() {});
  }

  void decrementar2() {
    numero2--;
    setState(() {});
  }

  void reiniciar2() {
    numero2 = 0;
    setState(() {});
  }

//Resultado
  int resultado() {
    return numero1 * numero2;
  }

  @override
  Widget build(BuildContext context) {
    const TextStyle estiloTexto = TextStyle(
      fontSize: 30,
      color: Colors.white,
      fontWeight: FontWeight.bold,
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        title: const Text('Multiplicador básico'),
        elevation: 10,
      ),
      backgroundColor: Color.fromARGB(255, 128, 92, 226),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //primer numero
        children: [
          const Text(
            'Multiplicando:',
            style: estiloTexto,
          ),
          Text('$numero1', style: estiloTexto),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            FloatingActionButton(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              onPressed: () => decrementar(),
              child: const Icon(Icons.exposure_minus_1),
            ),
            FloatingActionButton(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              onPressed: () => reiniciar(),
              child: const Icon(Icons.restart_alt_rounded),
            ),
            FloatingActionButton(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              onPressed: () => incrementar(),
              child: const Icon(Icons.exposure_plus_1),
            ),
          ]),
          const Text(
            'Multiplicador: ',
            style: estiloTexto,
          ),
          Text('$numero2', style: estiloTexto),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            FloatingActionButton(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              onPressed: () => decrementar2(),
              child: const Icon(Icons.exposure_minus_1),
            ),
            FloatingActionButton(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              onPressed: () => reiniciar2(),
              child: const Icon(Icons.restart_alt_rounded),
            ),
            FloatingActionButton(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              onPressed: () => incrementar2(),
              child: const Icon(Icons.exposure_plus_1),
            ),
          ]),
          const Text(
            'Resultado: ',
            style: estiloTexto,
          ),
          Text(
            '${resultado()}',
            style: estiloTexto,
          )
        ],
      )),
    );
  }
}
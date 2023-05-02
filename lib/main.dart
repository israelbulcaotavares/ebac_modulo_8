import 'package:flutter/material.dart';
import 'Car.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Carros',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Car> _carros = [
    const Car(
      marca: 'Ferrari',
      nome: 'Enzo',
      imagem: 'assets/enzo.png',
    ),
    const Car(
        marca: 'Lamborghini',
        nome: 'Aventador',
        imagem: 'assets/aventador.png'),
    const Car(
      marca: 'Bugatti',
      nome: 'Chiron',
      imagem: 'assets/chiron.png',
    ),
    const Car(
      marca: 'McLaren',
      nome: 'P1',
      imagem: 'assets/p1.png',
    ),
     const Car(
      marca: 'Audi',
      nome: 'A5',
      imagem: 'assets/audi.png',
    ),
     const Car(
      marca: 'Chevrolet',
      nome: 'Camaro',
      imagem: 'assets/camaro.png',
    ),
     const Car(
      marca: 'Toyota',
      nome: 'Corolla',
      imagem: 'assets/toyota.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Carros'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListWheelScrollView(
              itemExtent: 300,
              children: _carros.map((car) => _buildCarItem(car)).toList(),
              onSelectedItemChanged: (index) {
                setState(() {});
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCarItem(Car car) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            car.marca,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text(
            car.nome,
            style: const TextStyle(fontSize: 18),
          ),
          Image.asset(
            car.imagem,
            height: 200,
          ),
        ],
      ),
    );
  }
}

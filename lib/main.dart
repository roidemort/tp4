import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Carte de Visite',
      theme: ThemeData(primarySwatch: Colors.pink),
      debugShowCheckedModeBanner: false,
      home: const CarteDeVisite(),
    );
  }
}

class CarteDeVisite extends StatefulWidget {
  const CarteDeVisite({super.key});

  @override
  State<CarteDeVisite> createState() => _CarteDeVisiteState();
}

class _CarteDeVisiteState extends State<CarteDeVisite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('images/monimage.jpg'),
            ),
            const Text(
              'Mon Nom',
              style: TextStyle(
                fontSize: 32,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'Pacifico',
              ),
            ),
            const Text(
              'Mon Métier',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white70,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
                fontFamily: 'Source Sans Pro',
              ),
            ),
            const SizedBox(
              height: 20,
              width: 150,
              child: Divider(color: Colors.white),
            ),
            Card(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: ListTile(
                leading: const Icon(Icons.phone, color: Colors.pink),
                title: Text(
                  '+33 6 12 34 56 78',
                  style: TextStyle(color: Colors.pink[900], fontSize: 18),
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: ListTile(
                leading: const Icon(Icons.email, color: Colors.pink),
                title: Text(
                  'monemail@example.com',
                  style: TextStyle(color: Colors.pink[900], fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:minhabreja/components/minhabreja_textformfield.dart';
import 'package:minhabreja/controllers/home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeController controller = HomeController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Person',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_basket),
          label: "Meus pedidos",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: "Favoritos",
        ),
      ]),
      body: Column(
        children: [
          const SizedBox(
            height: 4,
          ),
          MinhaBrejaFormField(
            controller: controller.intputValue269,
            cursorColor: Colors.white,
            color: Colors.blue,
            icon: Icons.abc,
            text: '269 ml',
            iconColor: Colors.green,
            iconSize: 24,
            fontSize: 18,
            textColor: Colors.white,
          ),
          const SizedBox(
            height: 4,
          ),
          MinhaBrejaFormField(
            controller: controller.intputValue350,
            color: Colors.blue,
            icon: Icons.abc,
            text: '350 ml',
            iconColor: Colors.green,
            iconSize: 24,
            fontSize: 18,
            textColor: Colors.white,
          ),
          const SizedBox(
            height: 4,
          ),
          MinhaBrejaFormField(
            controller: controller.intputValue473,
            color: Colors.blue,
            icon: Icons.abc,
            text: '473 ml',
            iconColor: Colors.green,
            iconSize: 24,
            fontSize: 18,
            textColor: Colors.white,
          ),
          const SizedBox(
            height: 4,
          ),
          MinhaBrejaFormField(
            controller: controller.intputValue600,
            color: Colors.blue,
            icon: Icons.abc,
            text: '600 ml',
            iconColor: Colors.green,
            iconSize: 24,
            fontSize: 18,
            textColor: Colors.white,
          ),
          const SizedBox(
            height: 4,
          ),
          MinhaBrejaFormField(
            controller: controller.intputValue1000,
            color: Colors.blue,
            icon: Icons.abc,
            text: '1000 ml',
            iconColor: Colors.green,
            iconSize: 24,
            fontSize: 18,
            textColor: Colors.white,
          ),
          const SizedBox(
            height: 4,
          ),
          Container(
            color: Colors.red,
            child: TextButton(
              onPressed: () => controller.calculo(),
              child: const Text('Calcular'),
            ),
          ),
        ],
      ),
    );
  }
}

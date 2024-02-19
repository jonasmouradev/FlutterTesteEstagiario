import 'package:flutter/material.dart';
import 'package:flutter_application/list_page.dart';

void main() {
  runApp(const UiBasica());
}

class UiBasica extends StatelessWidget {
  const UiBasica({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Snackbar Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  final snackBar = SnackBar(
                    content: const Text('Olá, Next Tecnologia!'),
                    duration: const Duration(seconds: 2),
                    action: SnackBarAction(
                      label: 'Fechar',
                      onPressed: () {
                        // Ação ao pressionar o botão "Fechar" no snackbar
                      },
                    ),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: const Text('Clique-me'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ListPage()),
                  );
                },
                child: const Text('Lista Simples'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

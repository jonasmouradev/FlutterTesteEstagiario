import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        backgroundColor: Colors.red,
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          String item = '';
          int itemIndex = index + 1;
          return ListTile(
            title: Text('Item $itemIndex'),
            onTap: () {
              showDialog(
                barrierLabel: item = ' Item $itemIndex',
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('Item selecionado'),
                    content: Text(item),
                    actions: <Widget>[
                      TextButton(
                        child: const Text('Fechar'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}

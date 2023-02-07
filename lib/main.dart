import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

final title = [
  "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
  "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
  "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
];

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DynamicHeightGridView(
        itemCount: 4,
        crossAxisCount: 2,
        builder: (ctx, index) {
          return Container(
            child: Card(
              child: Text(title[index]),
            ),
          );
        },
      ),
    );
  }
}

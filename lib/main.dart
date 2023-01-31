import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: [
          ListTile(
              leading: Icon(Icons.wb_sunny),
              title: Text("Güneş"),
              subtitle: Text("Güneş alt başlık"),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                print("Güneş Tıklanıldı");
              }),
          ListTile(
              leading: Icon(Icons.brightness_2),
              title: Text("Ay"),
              subtitle: Text("Ay alt başlık"),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                print("Ay Tıklanıldı");
              }),
          ListTile(
              leading: Icon(Icons.star),
              title: Text("Yıldız"),
              subtitle: Text("Yıldız alt başlık"),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                print("Yıldız Tıklanıldı");
              }),
          GestureDetector(
            onTap: () {
              print("Card Tıklanıldı");
            },
            child: Card(
              child: SizedBox(
                height: 50,
                child: Row(
                  children: [
                    Text("Card Tasarım"),
                    Spacer(),
                    Icon(Icons.more_vert),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

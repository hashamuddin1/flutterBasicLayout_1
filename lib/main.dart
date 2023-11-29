import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      debugShowCheckedModeBanner: false,
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
          title: const Text("Basic Layout 2"),
        ),
        body: Center(
            child: Container(
                width: 350,
                height: 150,
                color: Colors.grey,
                child: Row(
                  children: [
                    Container(
                        width: 170,
                        height: 150,
                        child: Image.network(
                            "https://images.unsplash.com/photo-1595341888016-a392ef81b7de?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fHNob2VzfGVufDB8fDB8fHww",
                            fit: BoxFit.cover)),
                    Container(
                        width: 180,
                        height: 150,
                        child: Column(
                          children: [
                            Container(
                              width: 180,
                              height: 60,
                              padding: EdgeInsets.all(5),
                              child: const Text(r"$ 44",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                            ),
                            Container(
                              width: 180,
                              height: 90,
                              padding: EdgeInsets.all(5),
                              child: const Text(r"A paragraph is a self-contained unit of discourse in writing dealing with a particular point or idea.",style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold)),
                            )
                          ],
                        ))
                  ],
                ))));
  }
}

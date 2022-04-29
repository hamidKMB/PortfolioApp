import 'package:flutter/material.dart';

void main() {
  MyApp app = MyApp();
  runApp(app);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold();
  }
}

Widget AppScaffold() {
  return MaterialApp(
    theme: ThemeData(fontFamily: 'vazir'),
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: CustomAppBar(),
      backgroundColor: Colors.amber,
      body: AppBody(),
    ),
  );
}

Widget AppBody() {
  return SafeArea(
    child: Center(
      child: Container(
        padding: EdgeInsets.all(5.0),
        color: Colors.white,
        child: Text('حمید کامیاب'),
      ),
    ),
  );
}

PreferredSizeWidget CustomAppBar() {
  return (AppBar(
    title: Center(
      child: Text(
        'Hamid Kamyab',
        style:
            const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
    ),
    backgroundColor: Colors.yellow,
    // below property Change the shadow of the appBar
    elevation: 0,
  ));
}

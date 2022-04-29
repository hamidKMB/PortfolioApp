import 'package:flutter/material.dart';

void main() {
  MyApp app = MyApp();
  runApp(app);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _AppScaffold();
  }

  Widget _AppScaffold() {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'vazir'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: _ApplicationAppBar(),
        backgroundColor: Colors.lightBlue,
        body: _ApplicationBody(),
      ),
    );
  }

  PreferredSizeWidget _ApplicationAppBar() {
    return AppBar(
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
    );
  }

  Widget _ApplicationBody() {
    return SafeArea(
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('images/avatar.jpeg'),
                radius: 80,
              ),
              Text(
                "My Name is Hamid, I'm a Developer",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              Text(
                "Love Code, Develop Web By Reactjs and Mobile Apps by Flutter",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

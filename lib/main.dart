import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Textfield Design"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                hintText: "Enter your name",
                labelText: "Name",
                labelStyle: TextStyle(fontSize: 15, color: Colors.black),
                border: InputBorder.none,
                fillColor: Colors.black12,
                filled: true,
              ),
              keyboardType: TextInputType.name,
              obscureText: false,
              maxLength: 20,
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Enter your age",
                labelText: "Age",
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
                border: UnderlineInputBorder(),
                // filled: true,
                // fillColor: Colors.black12,
              ),
              keyboardType: TextInputType.number,
              obscureText: false,
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: "Enter your password",
                  labelText: "Password",
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                  border: OutlineInputBorder(),
                  // filled: true,
                  // fillColor: Colors.black12,
                  suffixIcon: IconButton(
                    icon: Icon(Icons.security),
                    onPressed: () {},
                  )),
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
            ),
            RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                child: Text("Login"),
                onPressed: () {
                  print("Name " + _nameController.text);
                }),
          ],
        ),
      ),
    );
  }
}

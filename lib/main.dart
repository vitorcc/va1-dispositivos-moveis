import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(title: "VA1 Dispositivos Móveis - UMJ", home: MainActivity()));
class MainActivity extends StatefulWidget {
  @override
  _MainActivityState createState() => _MainActivityState();
}
class _MainActivityState extends State {
  String msg = 'VA1 - Dispositivos Móveis - UMJ';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      appBar: AppBar(
        title: Text('VA1 Dispositivos Móveis - UMJ'),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                msg,
                style: TextStyle(fontSize: 20, fontStyle: FontStyle.normal),
              ),
              RaisedButton(
                child: Text("Clique Aqui"),
                onPressed: _mudarTexto,
                color: Colors.blueAccent,
                textColor: Colors.yellow,
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                splashColor: Colors.grey,
              )
            ],
          ),
        ),
      ),
    );
  }
  _mudarTexto() {
    setState(() {
      if (msg.startsWith('V')) {
        msg = 'Prof. Cláudio vai me dar 10, com fé em Deus! ';
      } else {
        msg = 'VA1 - Dispositivos Móveis - UMJ';
      }
    });
  }
}
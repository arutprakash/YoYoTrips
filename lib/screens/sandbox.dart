import 'package:flutter/material.dart';

class Sandbox extends StatefulWidget {
  @override
  _SandboxState createState() => _SandboxState();
}

class _SandboxState extends State<Sandbox> {

  double _margin = 0;
  double _opacity = 1;
  double _width = 200;
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        duration: Duration(microseconds: 2),
        margin: EdgeInsets.all(_margin),
        width: _width,
        color: _color,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('animate margin'),
              onPressed: () => setState(()=> _margin=50),
            ),
            RaisedButton(
              child: Text('animate color'),
              onPressed: () => setState(()=> _color= Colors.purple),
            ),
            RaisedButton(
              child: Text('animate width'),
              onPressed: () => setState(()=> _width=400),
            ),
            AnimatedOpacity(
                opacity: _opacity,
                duration: Duration(seconds: 2),
              child: Text(
                'hide me',
                style: TextStyle(color: Colors.white)
              )
            )
          ],),
      ),
    );
  }
}

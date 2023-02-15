import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VisibiltyExampleContainer extends StatefulWidget {

  @override
  _VisibiltyExampleContainerState createState() =>
      _VisibiltyExampleContainerState();
}

class _VisibiltyExampleContainerState extends State<VisibiltyExampleContainer> {
  var _showContainer;
  bool cmbscritta = false;

  @override
  void initState() {
    _showContainer = false;
    super.initState();
  }

  void show() {
    setState(() {
      _showContainer = !_showContainer;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
            child: Column(
              children: <Widget>[
                Visibility(
                  child: SampleContainer(),
                  visible: _showContainer,
                ),
                Text(
                  "This is a sample text",
                  style: TextStyle(fontSize: 40),
                ),
                ElevatedButton(
                  child: cmbscritta ? Text("GeoOn") : Text("GeoOFF"),
                  onPressed: () {
                    setState(() {
                      cmbscritta = !cmbscritta;
                    });
                    debugPrint("clicked");
                    show();
                  },
                )
              ],
            ),
          )),
    );
  }
}
class SampleContainer extends StatefulWidget {
  @override
  _SampleContainerState createState() => _SampleContainerState();
}

class _SampleContainerState extends State<SampleContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("hi"),


    );
  }
}
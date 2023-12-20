import 'package:flutter/material.dart';

class SnackPage extends StatefulWidget {
  const SnackPage({super.key, required this.title});
  final String title;

  @override
  State<SnackPage> createState() => _SnackPageState();
}

class _SnackPageState extends State<SnackPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title),),
      body: Center(
        child: Column(
          children: [
            FilledButton(
                onPressed: callSnack,
                child: Text("SnackBar")
            )
          ],
        ),
      ),
    );
  }

  void callSnack(){
    SnackBar snackBar = SnackBar(
        content: Text("Suppression du message"),
      duration: Duration(seconds: 3),
      backgroundColor: Colors.black54,
      action: SnackBarAction(
        label: "Annuler ...",
        onPressed: (){
          print("ça ne supprime pas le message");
        },
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}

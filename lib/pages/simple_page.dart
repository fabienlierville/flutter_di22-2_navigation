import 'package:flutter/material.dart';

class SimplePage extends StatefulWidget {
  const SimplePage({super.key});

  @override
  State<SimplePage> createState() => _SimplePageState();
}

class _SimplePageState extends State<SimplePage> {
  String _choix = "Aucun Choix";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Simple Dialog"),),
      body: Center(
        child: Column(
          children: [
            FilledButton(
                onPressed: simple,
                child: Text("Simple")
            ),
            Padding(padding: EdgeInsets.only(top: 30)),
            Text("Vous avez choisi : ${_choix}")
          ],
        ),
      ),
    );
  }

  Future<void> simple() async{
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext contextDialog){
          return SimpleDialog(
            title: Text("Faites votre choix"),
            children: [
              Text("Choisissez un moyen de transport"),
              SimpleDialogOption(
                child: Row(
                  children: [
                    Icon(Icons.directions_car),
                    Text("Voiture")
                  ],
                ),
                onPressed: (){
                  setState(() {
                    _choix = "Voiture";
                  });
                  Navigator.pop(contextDialog);
                },
              ),
              SimpleDialogOption(
                child: Row(
                  children: [
                    Icon(Icons.directions_boat),
                    Text("Bateau")
                  ],
                ),
                onPressed: (){
                  setState(() {
                    _choix = "Bateau";
                  });
                  Navigator.pop(contextDialog);
                },
              ),
              SimpleDialogOption(
                child: Row(
                  children: [
                    Icon(Icons.airplanemode_active),
                    Text("Avion")
                  ],
                ),
                onPressed: (){
                  setState(() {
                    _choix = "Avion";
                  });
                  Navigator.pop(contextDialog);
                },
              ),
            ],
          );
        }
    );
  }
}

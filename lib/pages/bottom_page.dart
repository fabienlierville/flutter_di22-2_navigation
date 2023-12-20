import 'package:flutter/material.dart';

class BottomPage extends StatefulWidget {
  const BottomPage({super.key});

  @override
  State<BottomPage> createState() => _BottomPageState();
}

class _BottomPageState extends State<BottomPage> {
  String _choix = "Aucun Choix";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bottom Sheet"),),
      body: Center(
        child: Column(
          children: [
            FilledButton(
                onPressed: bottom,
                child: Text("Bottom")
            ),
            Padding(padding: EdgeInsets.only(top: 30)),
            Text("Vous avez choisi : ${_choix}")
          ],
        ),
      ),
    );
  }
  Future<void> bottom() async{
    showModalBottomSheet(
        context: context,
        isDismissible: false,
        builder: (BuildContext contextBottom){
          return Column(
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
                  Navigator.pop(contextBottom);
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
                  Navigator.pop(contextBottom);
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
                  Navigator.pop(contextBottom);
                },
              ),
            ],
          );
        }
    );
  }
}

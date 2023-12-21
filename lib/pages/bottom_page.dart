import 'package:flutter/material.dart';
import 'package:navigation/pages/alert_page.dart';
import 'package:navigation/pages/simple_page.dart';
import 'package:navigation/pages/snack_page.dart';

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
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.warning), label: "Alert"),
          BottomNavigationBarItem(icon: Icon(Icons.forward), label: "Simple"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Snack"),
        ],
        onTap: (int index){
          switch(index){
            case 0:
              Navigator.pushNamed(context, "/alert");
              break;
            case 1:
              Navigator.pushNamed(context, "/simple");
              break;
            case 2:
              Navigator.pushNamed(context, "/snack");
              break;
          }
        },
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

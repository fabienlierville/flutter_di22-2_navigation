import 'package:flutter/material.dart';

class AlertPage extends StatefulWidget {
  const AlertPage({super.key});

  @override
  State<AlertPage> createState() => _AlertPageState();
}

class _AlertPageState extends State<AlertPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Alert Dialog"),),
      body: Center(
        child: Column(
          children: [
            FilledButton(
                onPressed: alerte,
                child: Text("Alert")
            )
          ],
        ),
      ),
    );
  }

  Future<void> alerte() async{
      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext contextDialog){
            return AlertDialog(
              title: Text("Ceci est une alerte"),
              content: Text("Nous avons un problème avec Bastien"),
              actions: [
                TextButton(
                    onPressed: (){
                      print("Annuler");
                      Navigator.pop(contextDialog);
                    },
                    child: Text("Annuler", style: TextStyle(color: Colors.red),)
                ),
                TextButton(
                    onPressed: (){
                      print("Valider");
                      Navigator.pop(contextDialog);
                    },
                    child: Text("Valider", style: TextStyle(color: Colors.blue),)
                ),
              ],
            );
          }
      );
  }

}

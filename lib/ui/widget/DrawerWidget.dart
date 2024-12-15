import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

enum Answers{YES,NO,MAYBE}

class _DrawerWidgetState extends State<DrawerWidget> {

  String _value = '';

  void _setValue(String value) => setState(() => _value = value);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child:ListView(
          children: [
            DrawerHeader(
                decoration: BoxDecoration(color: Colors.greenAccent),
                child: Column(
                children: [
                  CircleAvatar( radius: 20,

                  backgroundImage: AssetImage("assets/images/avatar.png"),),
                   Text("Enjoy You Time",
                  style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700)
                )
                ]
            )
            ),
            ListTile(
                title: Text("Movie List"),
                trailing: Icon(Icons.list),
                onTap: (){
                  Navigator.pop(context);
                },
            ), ListTile(
                title: Text("show Option"),
                trailing: Icon(Icons.add_road_sharp),
                onTap: (){
                  popBottomSheet();
                },
            ), ListTile(
                title: Text("show Alert"),
                trailing: Icon(Icons.add_card_rounded),
                onTap: (){
                  _showAlert(context, "update App , Please");
                },
            ), ListTile(
                title: Text("rate us"),
                trailing: Icon(Icons.rate_review),
                onTap: (){
                  _askUser();
                },
            ),

          ],

      ),
    );
  }

  popBottomSheet(){
      showModalBottomSheet<void>(
          context: context,
          builder: (BuildContext context) {
            return  Container(
              child:  Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                     Text('Some info here', style:  TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),
                     Text('Some info here', style:  TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),
                     Text('Some info here', style:  TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),
                     Text('Some info here', style:  TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),
                     Text('Some info here', style:  TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),
                     Text('Some info here', style:  TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),
                             //     new RaisedButton(onPressed: () => Navigator.pop(context), child: new Text('Close'),)
                  ],
                ),
              ),
            );
          }
      );

  }

  Future _showAlert(BuildContext context, String message) async {
    final ButtonStyle flatButtonStyle = TextButton.styleFrom(
      minimumSize: Size(100, 100),
      backgroundColor: Colors.grey,
      padding: EdgeInsets.all(0),
    );
    return showDialog(
        builder: (context) => new AlertDialog(
          title: new Text(message , style: TextStyle(fontSize: 18),),
          actions: <Widget>[
            new TextButton(  onPressed: () => Navigator.pop(context), child: new Text('Ok' , style: TextStyle(fontSize: 20),))
          ],
        ), context: context

    );
  }

  Future _askUser() async {
    switch(
    await showDialog(
        context: context,
        /*
       Older Flutter Versions
        child: new SimpleDialog(
          title: new Text('Do you like Flutter?'),
          children: <Widget>[
            new SimpleDialogOption(child: new Text('Yes!!!'),onPressed: (){Navigator.pop(context, Answers.YES);},),
            new SimpleDialogOption(child: new Text('NO :('),onPressed: (){Navigator.pop(context, Answers.NO);},),
            new SimpleDialogOption(child: new Text('Maybe :|'),onPressed: (){Navigator.pop(context, Answers.MAYBE);},),
          ],
        )
        */
        builder: (BuildContext context) {
          return new SimpleDialog(
            title: new Text('Do you like Flutter?'),
            children: <Widget>[
              new SimpleDialogOption(child: new Text('Yes!!!'),onPressed: (){Navigator.pop(context, Answers.YES);},),
              new SimpleDialogOption(child: new Text('NO :('),onPressed: (){Navigator.pop(context, Answers.NO);},),
              new SimpleDialogOption(child: new Text('Maybe :|'),onPressed: (){Navigator.pop(context, Answers.MAYBE);},),
            ],
          );
        }
    )
    ) {
      case Answers.YES:
        _setValue('Yes');
        break;
      case Answers.NO:
        _setValue('No');
        break;
      case Answers.MAYBE:
        _setValue('Maybe');
        break;
    }
  }


}

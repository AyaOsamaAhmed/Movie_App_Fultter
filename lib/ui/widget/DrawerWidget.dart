import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
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
            )

          ],

      ),
    );
  }
}

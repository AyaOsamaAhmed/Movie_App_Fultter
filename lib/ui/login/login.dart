import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:movies_app/ui/MovieList/movies.dart';

import '../MainMovieList.dart';

class LoginPage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() => _LoginPageState();

}

class _LoginPageState extends State<LoginPage>{

  var password = "";

  TextEditingController userName = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
        padding: new EdgeInsets.all(32.0),
        margin: const EdgeInsets.only(top: 50),
          child: Column(
            children: [
              Image.asset('assets/images/login_img.png'),
              Padding(padding: new EdgeInsets.all(22.0)),
              Text("user: ${userName.text} , pass: $password"),
              TextField(
                decoration: InputDecoration(
                    labelText: 'User Name',
                    hintText: 'enter User Name',
                    icon: Icon(Icons.people)
                ),
                autocorrect: true,
                autofocus: true,
                keyboardType: TextInputType.text,
                controller: userName,

              ),

              Padding(padding: new EdgeInsets.all(22.0)),
              TextField(
                decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'enter Password',
                    icon: Icon(Icons.key)
                ),
                autocorrect: true,
                autofocus: true,
                keyboardType: TextInputType.text,
                onChanged: _onSubPass,
              ),

              Padding(padding: new EdgeInsets.all(22.0)),

              SizedBox(
                  width: double.infinity, // <-- match_parent
                  height: 50, // <-- match-parent
                  child:  ElevatedButton(
                    onPressed: () => _onPressed(), child: Text('Login')
                    ,style: ElevatedButton.styleFrom( foregroundColor: Colors.blueAccent,
                      backgroundColor: Colors.greenAccent , textStyle: TextStyle(fontSize: 24) ) ,
                  ),
              )
            ],
        ),
      ),
    );
  }

  _onPressed() {
      if(userName.text == "aya" && password == "123"){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>  MainMovieList()),
        );
      }else{
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text ("user name : aya , password : 123")
        ));

  /*
        Fluttertoast.showToast( msg: "aya" ,
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            textColor: Colors.white,
            webShowClose: true,
            fontSize: 16.0);
*/
      }
  }

  _onSubPass(String pass) {
    setState(() {
      password = pass ;
    });
  }

}
import 'package:flutter/material.dart';

import '../../domain/model/MovieModel.dart';

class MovieDetails extends StatefulWidget {
  MovieModel item ;
  MovieDetails({super.key , required this.item});
  @override
  _State createState() => _State();


}
class _State extends State<MovieDetails> {

   List<BottomNavigationBarItem> _items = [];
   String _value = '';
   int _index = 000;




   @override
   void initState() {
     //_items = new List();
     _items = []; //Needed if you have null safety enabled
     _items.add( const BottomNavigationBarItem(icon: Icon(Icons.picture_in_picture), label: 'Image'));
     _items.add( const BottomNavigationBarItem(icon: Icon(Icons.description), label: 'Desc'));
     _items.add( const BottomNavigationBarItem(icon: Icon(Icons.rate_review), label: 'Rate'));
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(" ${widget.item.title}",
          style: TextStyle(fontSize: 24 , fontWeight: FontWeight.bold, color: Colors.blue)) ,
      backgroundColor: Colors.greenAccent,

    ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if(_index == 0 )
              Image.network( 'https://image.tmdb.org/t/p/w500/${widget.item.posterPath}'),
              if(_index == 1)
                Padding(
                  padding: const EdgeInsets.fromLTRB(20,0,20,0),
                  child: Text("Description : ${widget.item.overview}" , style: TextStyle(fontSize: 24 , color: Colors.orange,
                  ), ),
                ),
              if(_index == 2)
                Image.asset('assets/images/rate_us.jpg'),
            ],
          ),
        ),
      ),
    bottomNavigationBar: BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: _items,
        fixedColor: Colors.blue,
        currentIndex: _index,
        onTap: (int item) {
          _BottomNav(item);
          if(item == 0){

          }else if(item == 1){

          }else if (item == 2){

          }
        },
        ),
     /* persistentFooterButtons: <Widget>[
          IconButton(icon:   Icon(Icons.timer), onPressed: () => ()),
          IconButton(icon:   Icon(Icons.people), onPressed: () =>()),
          IconButton(icon:   Icon(Icons.map), onPressed: () => ()),
      ],*/
        );
  }

  _BottomNav(int item){
    setState(() {
      _index = item ;
    });
  }
}

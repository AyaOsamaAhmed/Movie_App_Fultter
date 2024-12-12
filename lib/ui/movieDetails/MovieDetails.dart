import 'package:flutter/material.dart';

import '../../domain/model/MovieModel.dart';

class MovieDetails extends StatelessWidget {
   MovieModel item ;

   MovieDetails({super.key , required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(" ${item.title}",
          style: TextStyle(fontSize: 24 , fontWeight: FontWeight.bold, color: Colors.blue)) ,
      backgroundColor: Colors.greenAccent,

    ),
      body: Center(
        child: Container(
          child: Image.network( 'https://image.tmdb.org/t/p/w500/${item.posterPath}'),
        ),
      ),
    );
  }
}

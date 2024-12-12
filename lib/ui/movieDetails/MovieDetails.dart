import 'package:flutter/material.dart';

import '../../domain/model/MovieModel.dart';

class MovieDetails extends StatelessWidget {
   MovieModel item ;

   MovieDetails({super.key , required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Movie Title : ${item.title}"),),
      body: Center(
        child: Container(
          child: Image.network( "${item.posterPath}"),
        ),
      ),
    );
  }
}

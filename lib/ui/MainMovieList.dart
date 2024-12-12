import 'package:flutter/material.dart';

import 'MovieList/movies.dart';

class MainMovieList extends StatefulWidget {
  const MainMovieList({super.key});

  @override
  State<MainMovieList> createState() => _MainmovielistState();
}

class _MainmovielistState extends State<MainMovieList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movie App" ,
            style: TextStyle(fontSize: 24 , fontWeight: FontWeight.bold, color: Colors.blue)) ,
      backgroundColor: Colors.greenAccent,
      ),
      body: MoviesList(),
    );
  }
}



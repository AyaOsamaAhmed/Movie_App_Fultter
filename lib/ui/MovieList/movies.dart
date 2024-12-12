import 'package:flutter/material.dart';

import '../../domain/model/MovieModel.dart';
import '../widget/listWidget.dart';


class MoviesList extends StatefulWidget {

  const MoviesList({super.key});

  @override
  State<MoviesList> createState() => _MoviesListState();
}

class _MoviesListState extends State<MoviesList> {
  late  List<MovieModel> list ;
  @override
  void initState() {
    super.initState();

    list = List<MovieModel>.filled(10,MovieModel(title: 'Bring Him Home ' ,posterPath:  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZxAwNcGKjnQrk5ctZBLcfvMI5nOmyAjDf-qNlmu6kAu9m3CBqFcNNfx8NtYhdMcWqrF8&usqp=CAU"));


  /*  list.add(MovieModel(title: "The Road Within" ,posterPath:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ399Zh6o4rsDzVUXn9fQP7y9SJXw21e6qEPp-O2WhtW9G2Ny4EJvMusPbA424ALYPlk14&usqp=CAU"));
    list.add(MovieModel(title: 'Bring Him Home ' ,posterPath:  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZxAwNcGKjnQrk5ctZBLcfvMI5nOmyAjDf-qNlmu6kAu9m3CBqFcNNfx8NtYhdMcWqrF8&usqp=CAU"));
    list.add(MovieModel(title: "The Road Within" ,posterPath:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ399Zh6o4rsDzVUXn9fQP7y9SJXw21e6qEPp-O2WhtW9G2Ny4EJvMusPbA424ALYPlk14&usqp=CAU"));
    list.add(MovieModel(title: 'Bring Him Home ' ,posterPath:  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZxAwNcGKjnQrk5ctZBLcfvMI5nOmyAjDf-qNlmu6kAu9m3CBqFcNNfx8NtYhdMcWqrF8&usqp=CAU"));
    list.add(MovieModel(title: "The Road Within" ,posterPath:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ399Zh6o4rsDzVUXn9fQP7y9SJXw21e6qEPp-O2WhtW9G2Ny4EJvMusPbA424ALYPlk14&usqp=CAU"));
    list.add(MovieModel(title: 'Bring Him Home ' ,posterPath:  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZxAwNcGKjnQrk5ctZBLcfvMI5nOmyAjDf-qNlmu6kAu9m3CBqFcNNfx8NtYhdMcWqrF8&usqp=CAU"));
    list.add(MovieModel(title: "The Road Within" ,posterPath:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ399Zh6o4rsDzVUXn9fQP7y9SJXw21e6qEPp-O2WhtW9G2Ny4EJvMusPbA424ALYPlk14&usqp=CAU"));
    list.add(MovieModel(title: 'Bring Him Home ' ,posterPath:  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZxAwNcGKjnQrk5ctZBLcfvMI5nOmyAjDf-qNlmu6kAu9m3CBqFcNNfx8NtYhdMcWqrF8&usqp=CAU"));
    list.add(MovieModel(title: "The Road Within" ,posterPath:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ399Zh6o4rsDzVUXn9fQP7y9SJXw21e6qEPp-O2WhtW9G2Ny4EJvMusPbA424ALYPlk14&usqp=CAU"));
*/
  }

  @override
  Widget build(BuildContext context) {
    return moviesListWidget(context,list);
  }
}
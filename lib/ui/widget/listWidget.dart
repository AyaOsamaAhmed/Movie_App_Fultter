
import 'package:flutter/material.dart';

import '../../domain/model/MovieModel.dart';
import '../movieDetails/MovieDetails.dart';

Widget moviesListWidget(BuildContext context,List<MovieModel> list) {
  return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index) =>
          Card(elevation: 5, child: movieItemWidget(context,list[index])));
}

Widget movieItemWidget(BuildContext context,MovieModel item) {
  return GestureDetector(
    onTap: (){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) =>  MovieDetails( item: item)),
      );
    },
    child: Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.network(
           '${item.posterPath}',
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
          child: Column(
            children: [
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 200,
                    child: Text(
                      item.title!,
                      style: const TextStyle(
                        color: Colors.black87,
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                      ),
                      textAlign: TextAlign.start,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(height: 8),
                ],
              ),
              const SizedBox(height: 8),
            ],
          ),
        )
      ],
    ),
  );
}
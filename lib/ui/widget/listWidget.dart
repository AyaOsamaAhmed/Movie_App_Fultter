
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../domain/model/MovieModel.dart';
import '../../domain/model/MovieResponse.dart';
import '../movieDetails/MovieDetails.dart';


Widget moviesFutureBuilder(BuildContext context ,Future<MovieResponse> moviesFuture) {
  return FutureBuilder(
      future: moviesFuture,
      builder: (context, snapShot) {
        if (snapShot.hasData) {
          return moviesListWidget(context,snapShot.data!.results!);
        } else if (snapShot.hasError) {
          return Text(snapShot.error.toString(),
              style: const TextStyle(color: Colors.red));
        }
        return const CircularProgressIndicator(
          strokeCap: StrokeCap.round,
          color: Colors.blueAccent,
        );
      });
}

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
        FadeInImage(
          image:NetworkImage('https://image.tmdb.org/t/p/w500/${item.posterPath}'),
          placeholder: const AssetImage("assets/images/avatar.png"),
          imageErrorBuilder:(context, error, stackTrace) {
            return Image.asset('your_default_image_path',
                fit: BoxFit.fitWidth
            );
          },
          fit: BoxFit.fitWidth,
        ),
      /*  CachedNetworkImage(
          imageUrl:   'https://image.tmdb.org/t/p/w500/${item.posterPath}',
          placeholder: (context, url) => new CircularProgressIndicator(),
          errorWidget: (context, url, error) => new Icon(Icons.error),
        ),*/
      /*  ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.network(
            'https://image.tmdb.org/t/p/w500/${item.posterPath}',//'${item.posterPath}',
            fit: BoxFit.cover,
          ),
        ),*/
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
import 'package:flutter/material.dart';
import 'package:movie_app/core/constants/styles.dart';
import 'package:movie_app/core/models/movie.dart';

class MovieTile extends StatelessWidget {
  final Movie movie;

  MovieTile(this.movie);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(
        children: [
          ///
          ///Movie image
          ///
          FadeInImage(
            height: 60,
            width: 100,
            fit: BoxFit.cover,
            image: NetworkImage('${movie.imgUrl}'),
            placeholder: AssetImage('assets/images/Endgame-Lead-1.jpg'),
          ),

          SizedBox(width: 10),

          ///
          /// Text widgets
          ///
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                '${movie.name}',
                style: bodyTextStyle,
              ),
              SizedBox(height: 5),
              Text(
                '${movie.details}',
                style: bodyTextStyle.copyWith(fontSize: 10),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

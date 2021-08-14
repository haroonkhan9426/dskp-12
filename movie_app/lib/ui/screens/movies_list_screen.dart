import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/core/constants/colors.dart';
import 'package:movie_app/core/models/movie.dart';
import 'package:movie_app/ui/custom_widgets/movie_tile.dart';

class MoviesListScreen extends StatefulWidget {
  @override
  _MoviesListScreenState createState() => _MoviesListScreenState();
}

class _MoviesListScreenState extends State<MoviesListScreen> {
  final firestore = FirebaseFirestore.instance;
  final movies = [];
  bool isGotData = false;

  @override
  void initState() {
    _getData();
    super.initState();
  }

  _getData() async {
    final snapShot = await firestore.collection('movies').get();
    for (int i = 0; i < snapShot.docs.length; i++) {
      movies.add(Movie.fromJson(snapShot.docs[i].data()));
    }
    isGotData = true;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: primaryColor,
        body: Padding(
          padding: const EdgeInsets.only(top: 30, left: 20),
          child: isGotData
              ? ListView.builder(
                  itemCount: movies.length,
                  itemBuilder: (context, index) => MovieTile(movies[index]),
                )
              : Center(child: CircularProgressIndicator()),
        ),
      ),
    );
  }
}

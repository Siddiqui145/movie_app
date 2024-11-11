import 'package:flutter/material.dart';
import 'package:movie_app/models/movie.dart';

class DetailsScreen extends StatelessWidget {
  final Movie movie;
  const DetailsScreen({required this.movie, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 154, 20, 10),
        centerTitle: true,
        title: Text(movie.title),
      ),
      body: Column(
        children: [
          Image.network(
            movie.imageUrl.isNotEmpty ? movie.imageUrl : 'assets/failed.jpeg',
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Image.asset('assets/failed.jpeg');
            },
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(movie.summary),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:movie_app/models/movie.dart';
import 'package:movie_app/screens/details_screen.dart';
import 'package:movie_app/services/api_service.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<Movie> _searchResults = [];
  final TextEditingController _controller = TextEditingController();

  void _searchMovies(String query) async {
    final results = await ApiService.searchMovies(query);
    setState(() {
      _searchResults = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 154, 20, 10),
        title: TextField(
          controller: _controller,
          decoration: const InputDecoration(hintText: 'Search movies'),
          onSubmitted: _searchMovies,
        ),
      ),
      body: ListView.builder(
        itemCount: _searchResults.length,
        itemBuilder: (context, index) {
          final movie = _searchResults[index];

          return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailsScreen(movie: movie)));
            },
            child: ListTile(
              leading: Image.network(
                movie.imageUrl.isNotEmpty
                    ? movie.imageUrl
                    : 'assets/failed.jpeg',
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Image.asset('assets/failed.jpeg');
                },
              ),
              title: Text(movie.title),
              subtitle: Text(
                movie.summary,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:southsea_cinema/models/movie.dart';
import 'package:southsea_cinema/repositories/movie_repository.dart';
import 'package:southsea_cinema/widgets/movie_card.dart';
import 'package:southsea_cinema/widgets/nav_drawer.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final MovieRepository repository = MovieRepository();
    final List<Movie> movies = repository.getMovies();

    return Scaffold(
      appBar: AppBar(
        title: const Text ('Southsea Cinema'),
      ),
      drawer: const NavDrawer(),
      body: ListView.builder(
        itemCount: movies.length,
        itemBuilder: (context, index) {
          return MovieCard(movie: movies[index]);
        },
      ),
    );
    // return Scaffold(
    //   appBar: AppBar(
    //     title: const Text(
    //       appTitle,
    //       style: cinemaHeaderStyle,
    //     ),
    //     backgroundColor: cinemaSurface,
    //     iconTheme: const IconThemeData(color: cinemaBrand),
    //     elevation: 0,
    //   ),
    //   drawer: const NavDrawer(),
    //   body: const Center(
    //     child: Padding(
    //       padding: EdgeInsets.all(16.0),
    //       child: Column(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: [
    //           Text(
    //             'Welcome to $appTitle',
    //             style: TextStyle(
    //               color: cinemaFontWhite,
    //               fontSize: 22,
    //               fontWeight: FontWeight.bold,
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}

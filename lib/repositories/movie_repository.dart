import 'package:southsea_cinema/models/movie.dart';

class MovieRepository {
  List<Movie> getMovies() {
    return [
      Movie(
        id: '1',
        title: 'Howls Moving Castle',
        synopsis:
            'A young woman is cursed by a jealous witch and transformed into an old woman while a young wizard helps her break the spell.',
        ageRating: 'PG-13',
        screeningTime: '1h 59m',
        ticketPrice: 7.50,
        posterImagePath: 'assets/images/howls-moving-castle-poster.jpg',
      ),
      Movie(
        id: '2',
        title: 'Princess Mononoke',
        synopsis:
            'A young man is caught between his loyalty to his tribe and his growing understanding of the natural world, as he seeks to protect the forest from the encroachment of industrialization.',
        ageRating: 'PG-13',
        screeningTime: '2h 13m',
        ticketPrice: 7.50,
        posterImagePath: 'assets/images/OIP (1).webp',
      ),
    ];
  }
}

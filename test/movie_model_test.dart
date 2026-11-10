import 'package:flutter_test/flutter_test.dart';
import 'package:southsea_cinema/models/movie.dart';

void main() {
   group('Movie', () {
    test('initializes correctly with provided values', () {
      const movie = Movie(
        id: '1',
        title: 'Howls Moving Castle',
        synopsis: 'This is a test synopsis.',
        ageRating: 'PG',
        screeningTime: '1h 59m',
        ticketPrice: 7.5,
        posterImagePath: 'assets/images/howls-moving-castle-poster.jpg',
      );

      expect(movie.id, '1');
      expect(movie.title, 'Howls Moving Castle');
      expect(movie.synopsis, 'This is a test synopsis.');
      expect(movie.ageRating, 'PG');
      expect(movie.screeningTime, '1h 59m');
      expect(movie.formattedPrice, '£7.50');
      expect(movie.posterImagePath, 'assets/images/howls-moving-castle-poster.jpg');
    });

    test('formattedPrice returns correct string representation', () {
      const movie = Movie(
        id: '2',
        title: 'Princess Mononoke',
        synopsis: 'This is another test synopsis.',
        ageRating: 'PG-13',
        screeningTime: '2h 13m',
        ticketPrice: 8.0,
        posterImagePath: 'assets/images/OIP (1).webp',
      );

      expect(movie.id, '2');
      expect(movie.title, 'Princess Mononoke');
      expect(movie.synopsis, 'This is another test synopsis.');
      expect(movie.ageRating, 'PG-13');
      expect(movie.screeningTime, '2h 13m');
      expect(movie.formattedPrice, '£8.00');
      expect(movie.posterImagePath, 'assets/images/OIP (1).webp');
    });
    test('formattedPrice returns correct string representation for zero price', () {
      const movie = Movie(
        id: '3',
        title: 'Spiderman',
        synopsis: 'This is a free movie.',
        ageRating: 'PG',
        screeningTime: '1h 30m',
        ticketPrice: 6.0,
        posterImagePath: 'assets/images/free-movie-poster.jpg',
      );

      expect(movie.id, '3');
      expect(movie.title, 'Spiderman');
      expect(movie.synopsis, 'This is a free movie.');
      expect(movie.ageRating, '15');
      expect(movie.screeningTime, '2h 30m');
      expect(movie.formattedPrice, '£3.00');
      expect(movie.posterImagePath, 'assets/images/free-movie-poster.jpg');
    });
  });
}
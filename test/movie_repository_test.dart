import 'package:flutter_test/flutter_test.dart';
import 'package:southsea_cinema/models/movie.dart';
import 'package:southsea_cinema/repositories/movie_repository.dart';

void main() {
  group('MovieRepository tests', () {
    test('getMovies returns two movies', () {
      final MovieRepository repository = MovieRepository();
      final List<Movie> movies = repository.getMovies();

      final Movie HowlsMovingCastle = movies[0];
      expect(HowlsMovingCastle.id, '1');
      expect(HowlsMovingCastle.title, 'Howls Moving Castle');
      expect(HowlsMovingCastle.ticketPrice, 7.50);

      final Movie PrincessMononoke = movies[1];
      expect(PrincessMononoke.id, '2');
      expect(PrincessMononoke.title, 'Princess Mononoke');
      expect(PrincessMononoke.ticketPrice, 7.50);
    });
  });


  test('getMovieById returns the correct movie for a valid ID', () {
    final MovieRepository repository = MovieRepository();
    final Movie? movie = repository.getMovieById('1');

    expect(movie, isNotNull);
    expect(movie?.title, 'Howls Moving Castle');
    expect(movie?.ticketPrice, 7.50);
  });


  test('getMovieById returns null for an invalid ID', () {
    final MovieRepository repository = MovieRepository();
    final Movie? movie = repository.getMovieById('50');

    expect(movie, isNull);
  });
}

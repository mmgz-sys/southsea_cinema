import 'package:flutter/material.dart';
import 'package:southsea_cinema/models/movie.dart';

class MovieCard extends StatefulWidget {
  final Movie movie;

  const MovieCard({super.key, required this.movie});

  @override
  State<MovieCard> createState() => _MovieCardState();
}

class _MovieCardState extends State<MovieCard> {
  String _bookingMessage = '';

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Image.asset(
                  widget.movie.posterImagePath,
                  width: 100,
                  height: 150,
                  fit: BoxFit.cover,
                ),
                const SizedBox(width: 16.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.movie.title,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        widget.movie.ageRating,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        widget.movie.screeningTime,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        widget.movie.synopsis,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
              const SizedBox(height: 8),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(
                  widget.movie.formattedPrice,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    _bookingMessage = 'Booking tickets for ${widget.movie.title}';
                  },
                  child: const Text('Order Now'),
                ),
              ]),
            
            const SizedBox(height: 8),

            Text (
              _bookingMessage,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.black,
              ),
            )
            ],
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:southsea_cinema/constants.dart';
import 'package:southsea_cinema/widgets/nav_drawer.dart';

class MovieListing extends StatelessWidget {
  const MovieListing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(appTitle, style: cinemaHeaderStyle),
        backgroundColor: cinemaSurface,
        iconTheme: const IconThemeData(color: cinemaBrand),
        elevation: 0,
      ),
      drawer: const NavDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text('Ponyo (2008) (U)', style: TextStyle(fontSize: 40)),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
                'The film tells the story of a young goldfish named Ponyo who desires to become human after forming a friendship with a five-year-old boy named Sosuke.'),
            const SizedBox(height: 50),
            Row(
              children: [
                const Text('Screen 5', style: TextStyle(fontSize: 20)),
                const SizedBox(width: 20),
                const Text('14:30', style: TextStyle(fontSize: 20)),
              ],
            ),
            const SizedBox(height: 50),
            const Text('Select quantites (Only up to 6 total)',style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}

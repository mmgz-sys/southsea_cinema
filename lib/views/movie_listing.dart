import 'package:flutter/material.dart';
import 'package:southsea_cinema/constants.dart';
import 'package:southsea_cinema/widgets/nav_drawer.dart';

class MovieListing extends StatefulWidget {
  const MovieListing({super.key});

  @override
  State<MovieListing> createState() => _MovieListingState();
}

class _MovieListingState extends State<MovieListing> {
  int _quantity = 0;
  String _bookingMessage = '';

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
          children: <Widget>[
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
            const SizedBox(height: 80),
            const Text(
              'Select quantites (Only up to 6 total)',
              style: TextStyle(fontSize: 20),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Row(
                children: [
                  DropdownMenu<int>(
                  initialSelection: _quantity,
                  onSelected: (int? value){
                    if (value != null) {
                      setState(() {
                        _quantity = value;
                      });
                    }
                  },
                  dropdownMenuEntries: const [
                    DropdownMenuEntry(value: 0, label: '0'),
                    DropdownMenuEntry(value: 1, label: '1'),
                    DropdownMenuEntry(value: 2, label: '2'),
                    DropdownMenuEntry(value: 3, label: '3'),
                    DropdownMenuEntry(value: 4, label: '4'),
                    DropdownMenuEntry(value: 5, label: '5'),
                    DropdownMenuEntry(value: 6, label: '6'),
                  ],
              ),
              const SizedBox(width: 50),
              const Text('Adult £7.50'),
              ],
            ),
            ),
            const SizedBox(height: 20),
        ElevatedButton(
              onPressed: () {
                setState(() => _bookingMessage = 'Added $_quantity tickets to your order');
                // Handle the button press
              },
              child: const Text('Add to Order'),
            ),
            const SizedBox(height: 30),
            Text(_bookingMessage),
          ],
        ),
      ),
    );
  }
}

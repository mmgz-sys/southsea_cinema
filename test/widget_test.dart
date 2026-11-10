import 'package:flutter_test/flutter_test.dart';
import 'package:southsea_cinema/main.dart';
import 'package:southsea_cinema/views/home_view.dart';

void main() {
  testWidgets('Basic app loading test', (WidgetTester tester) async {
    await tester.pumpWidget(const SouthseaCinemaApp());
    expect(find.text('Welcome to Southsea Cinema'), findsOneWidget);
  });

  group('App smoke tests', () {
    testWidgets('App displays home screen', (WidgetTester tester) async {
      await tester.pumpWidget(const SouthseaCinemaApp());
      expect(find.text('Southsea Cinema'), findsOneWidget);
    });

    testWidgets('Displays movie listing', (WidgetTester tester) async {
      await tester.pumpWidget(const SouthseaCinemaApp());
      expect(find.text('Howls Moving Castle'), findsOneWidget);
      expect(find.text('Princess Mononoke'), findsOneWidget);
    });

    testWidgets(
      'Displays booking buttons',
      (WidgetTester tester) async {
        await tester.pumpWidget(const SouthseaCinemaApp());

        expect(find.text('Order Now'), findsNWidgets(2));
      },
    );
  });
}

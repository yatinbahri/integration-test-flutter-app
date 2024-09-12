import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:music_app/main.dart';
import 'package:flutter/material.dart';
import 'package:music_app/presentation/widgets/album_widget.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized(); // Test environment initialization
  // Defines the test with some description and body
  testWidgets('Add an album to favorites', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp()); // Launches the application
    await tester.pumpAndSettle(); // Ensure the app is ready to be used for further steps

    final albumFinder = find.byType(AlbumsWidget).first;
    await tester.tap(albumFinder);
    await tester.pumpAndSettle();

    await tester.tap(find.byIcon(Icons.favorite_border));
    await tester.pumpAndSettle();

    expect(find.byIcon(Icons.favorite), findsOneWidget);
  });
}

import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:music_app/main.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized(); // Test environment initialization
  // Test definition
  testWidgets('Display correct message when no albums are available', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp()); // Launches the app
    await tester.pumpAndSettle(); // Ensure the app is ready to be used

    expect(find.text('No Albums available'), findsOneWidget); // Checks for the text to be visible
  });
}
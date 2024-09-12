import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:music_app/main.dart';
import 'package:music_app/presentation/pages/album_details_page.dart';
import 'package:music_app/presentation/widgets/album_widget.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Navigate to Album Details Page', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    await tester.pumpAndSettle();

    final albumFinder = find.byType(AlbumsWidget).first;
    await tester.tap(albumFinder);
    await tester.pumpAndSettle();

    expect(find.byType(AlbumDetailsPage), findsOneWidget);
  });
}

import 'package:flutter_automation_test/main.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  group("Dummy Test", () {
    final binding = IntegrationTestWidgetsFlutterBinding.ensureInitialized();
    binding.framePolicy = LiveTestWidgetsFlutterBindingFramePolicy.fullyLive;
    testWidgets("Dummy Test", (widgetTester) async {
      const MyApp();
      await widgetTester.pump(const Duration(seconds: 15));
    });
  });
}

//flutter drive --driver=flutter_automation_test/app-test/integration_driver/integration_test_driver.dart --target=flutter_automation_test/app-test/tests/dummy_test.dart

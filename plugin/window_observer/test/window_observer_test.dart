import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:window_observer/window_observer.dart';

void main() {
  const MethodChannel channel = MethodChannel('window_observer');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await WindowObserver.platformVersion, '42');
  });
}

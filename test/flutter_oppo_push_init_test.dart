import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_oppo_push_init/flutter_oppo_push_init.dart';

void main() {
  const MethodChannel channel = MethodChannel('flutter_oppo_push_init');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('init', () async {
    expect(await FlutterOppoPushInit.initPush, '42');
  });
}

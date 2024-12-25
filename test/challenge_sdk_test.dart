import 'package:flutter_test/flutter_test.dart';
import 'package:challenge_sdk/challenge_sdk.dart';
import 'package:challenge_sdk/challenge_sdk_platform_interface.dart';
import 'package:challenge_sdk/challenge_sdk_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockChallengeSdkPlatform
    with MockPlatformInterfaceMixin
    implements ChallengeSdkPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final ChallengeSdkPlatform initialPlatform = ChallengeSdkPlatform.instance;

  test('$MethodChannelChallengeSdk is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelChallengeSdk>());
  });

  test('getPlatformVersion', () async {
    ChallengeSdk challengeSdkPlugin = ChallengeSdk();
    MockChallengeSdkPlatform fakePlatform = MockChallengeSdkPlatform();
    ChallengeSdkPlatform.instance = fakePlatform;

    expect(await challengeSdkPlugin.getPlatformVersion(), '42');
  });
}

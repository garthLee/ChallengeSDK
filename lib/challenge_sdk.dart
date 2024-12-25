
import 'challenge_sdk_platform_interface.dart';

class ChallengeSdk {
  Future<String?> getPlatformVersion() {
    return ChallengeSdkPlatform.instance.getPlatformVersion();
  }
}

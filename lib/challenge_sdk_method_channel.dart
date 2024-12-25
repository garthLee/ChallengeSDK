import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'challenge_sdk_platform_interface.dart';

/// An implementation of [ChallengeSdkPlatform] that uses method channels.
class MethodChannelChallengeSdk extends ChallengeSdkPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('challenge_sdk');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}

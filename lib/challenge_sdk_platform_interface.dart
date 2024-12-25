import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'challenge_sdk_method_channel.dart';

abstract class ChallengeSdkPlatform extends PlatformInterface {
  /// Constructs a ChallengeSdkPlatform.
  ChallengeSdkPlatform() : super(token: _token);

  static final Object _token = Object();

  static ChallengeSdkPlatform _instance = MethodChannelChallengeSdk();

  /// The default instance of [ChallengeSdkPlatform] to use.
  ///
  /// Defaults to [MethodChannelChallengeSdk].
  static ChallengeSdkPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [ChallengeSdkPlatform] when
  /// they register themselves.
  static set instance(ChallengeSdkPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}

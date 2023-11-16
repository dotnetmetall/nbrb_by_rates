import '../data/settings.dart';

interface class ISettingsRepository {
  Stream<Settings> get onChanged => throw UnimplementedError();

  Settings get() {
    throw UnimplementedError();
  }

  Future<void> saveAsync(Settings settings) {
    throw UnimplementedError();
  }
}

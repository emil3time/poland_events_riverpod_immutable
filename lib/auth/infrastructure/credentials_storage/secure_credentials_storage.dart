import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:oauth2/oauth2.dart';

class SecureCredentialsStorage {
  final FlutterSecureStorage _storage;

  SecureCredentialsStorage(this._storage);

  Credentials? _savedCredentials;
  static const _key = 'oauth2_credentials';

  Future<Credentials?> read() async {
    if (_savedCredentials != null) return _savedCredentials;

    final json = await _storage.read(key: _key);

    if (json == null) return null;

    try {
      return Credentials.fromJson(json);
    } on FormatException {
      return null;
    }
  }

  Future<void> save(Credentials credentals) async {
    _savedCredentials = credentals;

    return _storage.write(key: _key, value: credentals.toJson());
  }

  Future<void> delete() async {
    _savedCredentials = null;

    return _storage.delete(key: _key);
  }
}

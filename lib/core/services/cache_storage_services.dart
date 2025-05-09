import 'package:shared_preferences/shared_preferences.dart';

/// [CacheStorageServices] services express services related to storing variables in the cache
/// By defining a [_Keys] variable suitable for the value to be stored, and defining the following 4 methods,
/// you will be able to store any value in memory via these services.
/// 1- [setValue] to store value in cache
///    Future<void> setValue(String value) async => await _preferences?.setString(_Keys.value, value)
/// 2- [removeValue] to remove value from cache
///    Future<void> removeValue() async => await _preferences?.remove(_Keys.value);
/// 3- [value] to get value from cache
///    String? get value => _preferences?.getString(_Keys.value) ?? null;
/// 4- [hasValue] check if this variable stored or not
///    bool get hasValue => _preferences?.containsKey(_Keys.value) ?? false;
///
/// It is important to call [CacheStorageServices.init] in the main.dart file before the [runApp] function
/// await CacheStorageServices.init();

class CacheStorageServices {
  static CacheStorageServices? _instance;
  static SharedPreferences? _preferences;

  CacheStorageServices._();

  factory CacheStorageServices() => _instance ??= CacheStorageServices._();

  // should call init in your main before run app
  static Future<void> init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  // handle store API user token in cache
  Future<void> setToken(String token) async =>
      await _preferences?.setString(_Keys.token, token);

  Future<void> removeToken() async => await _preferences?.remove(_Keys.token);

  bool get hasToken => _preferences?.containsKey(_Keys.token) ?? false;

  String get token => _preferences?.getString(_Keys.token) ?? 'no token';

  Future<void> setLocale(String locale) async =>
      await _preferences?.setString(_Keys.locale, locale);

  String? get locale => _preferences?.getString(_Keys.locale);

  Future<void> setAvatar(int id) async =>
      await _preferences?.setInt(_Keys.avatar, id);

  int get avatar => _preferences?.getInt(_Keys.avatar) ?? 0;

  Future<void> setUserName(String username) async =>
      await _preferences?.setString(_Keys.username, username);

  Future<void> removeUserName() async =>
      await _preferences?.remove(_Keys.username);

  String get username =>
      _preferences?.getString(_Keys.username) ?? 'no username';

  Future<void> setAccountId(String username) async =>
      await _preferences?.setString(_Keys.accountId, username);

  Future<void> removeAccountId() async =>
      await _preferences?.remove(_Keys.accountId);

  String get accountId =>
      _preferences?.getString(_Keys.accountId) ?? 'no account id';

  Future<void> setFullName(String fullname) async =>
      await _preferences?.setString(_Keys.fullname, fullname);

  Future<void> removeFullName() async =>
      await _preferences?.remove(_Keys.fullname);

  String get fullname =>
      _preferences?.getString(_Keys.fullname) ?? 'no full name';

  Future<void> setEmail(String email) async =>
      await _preferences?.setString(_Keys.email, email);

  Future<void> removeEmail() async => await _preferences?.remove(_Keys.email);

  String get email => _preferences?.getString(_Keys.email) ?? 'no email';

  Future<void> clearAll() async {
    await removeToken();
    await removeUserName();
    await removeAccountId();
    await removeFullName();
    await removeEmail();
  }

// TODO: add your other variables
// others functions
  /// ...
}

sealed class _Keys {
  static const String token = 'token';
  static const String locale = 'locale';
  static const String avatar = 'avatar';
  static const String username = 'username';
  static const String fullname = 'fullname';
  static const String email = 'email';
  static const String accountId = 'accountId';
}

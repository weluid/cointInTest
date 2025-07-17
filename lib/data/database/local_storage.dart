import 'package:coinin/core/utils/constants.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@singleton
class LocalStorage {
  LocalStorage(this._prefs);

  final SharedPreferences _prefs;

  bool get hasToken => getToken() != null;

  String? getToken() => _prefs.getString(Constants.accessToken);

  void setToken(String token) => _prefs.setString(Constants.accessToken, token);

  void removeToken() => _prefs.remove(Constants.accessToken);

  String? getUser() => _prefs.getString(Constants.currentUser);

  void setUser(String user) => _prefs.setString(Constants.currentUser, user);

  void removeUser() => _prefs.remove(Constants.currentUser);


}

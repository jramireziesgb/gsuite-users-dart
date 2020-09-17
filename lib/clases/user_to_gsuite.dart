import 'package:userstogsuite/funciones/textos.dart';

class UserToGsuite {
  String _userName;
  String _firstName;
  String _lastName;
  String _emailAddress;
  String _password;
  String _orgUnitPath;

  UserToGsuite(
      String firstName,
      String lastName1,
      String lastName2,
      String password,
      String nIdEscolar,
      String orgUnitPath,
      String sufijo,
      String dominio) {
    String apell1;
    apell1 = lastName1.toLowerCase();
    apell1 = apell1.split(' ').map((s) => s).join(); // Se eliminan los espacios
    apell1 = apell1.length > 4 ? apell1.substring(0, 4) : apell1;

    String apell2;
    apell2 = lastName2 == '' ? '' : lastName2.toLowerCase();
    apell2 = apell2.split(' ').map((s) => s).join(); // Se eliminan los espacios
    apell2 = apell2.length > 4 ? apell2.substring(0, 4) : apell2;

    _userName = removeTildes(firstName
            .split(' ')
            .map((nombre) => nombre.substring(0, 1))
            .join()
            .toLowerCase() +
        apell1 +
        apell2);
    // _userName = _userName.length > 10 ? _userName.substring(0, 10) : _userName;
    _userName = _userName + nIdEscolar.substring(nIdEscolar.length - 3);
    _firstName = firstName;
    _lastName = lastName1 + ' ' + lastName2;
    _emailAddress = _userName + (sufijo != null ? '.$sufijo' : '') + dominio;
    _password = password;
    _orgUnitPath = orgUnitPath;
  }

  @override
  String toString() {
    return '$_firstName,$_lastName,$_emailAddress,$_password,$_orgUnitPath';
  }
}

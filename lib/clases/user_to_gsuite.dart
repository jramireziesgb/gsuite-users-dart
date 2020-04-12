import 'package:dart/funciones/textos.dart';

class UserToGsuite {
  String _userName;
  String _firstName;
  String _lastName;
  String _emailAddress;
  String _password;
  String _orgUnitPath;

  UserToGsuite(String firstName, String lastName, String password,
      String orgUnitPath, String sufijo, String dominio) {
    _userName = removeTildes(firstName
            .split(' ')
            .map((nombre) => nombre.substring(0, 1))
            .join()
            .toLowerCase() +
        lastName.split(' ').map((apellido) => apellido).join().toLowerCase());
    _userName = _userName.length > 10 ? _userName.substring(0, 10) : _userName;
    _firstName = firstName;
    _lastName = lastName;
    _emailAddress = _userName + (sufijo != null ? '.$sufijo' : '') + dominio;
    _password = password;
    _orgUnitPath = orgUnitPath;
  }

  @override
  String toString() {
    return '$_firstName,$_lastName,$_emailAddress,$_password,$_orgUnitPath';
  }
}

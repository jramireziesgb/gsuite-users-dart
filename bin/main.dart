import 'package:dart/clases/user_to_gsuite.dart';

void main(List<String> arguments) {
  var alumno = UserToGsuite('Juan Alberto', 'Gómez Jiménez', '123',
      '/Alumnos/ESO', 'eso', '@iesgbrenan.com');
  print('>>> $alumno');
}

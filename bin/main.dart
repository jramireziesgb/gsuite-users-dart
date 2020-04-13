import 'dart:io';
import 'dart:convert';

import 'package:args/args.dart';

import 'package:userstogsuite/clases/user_from_seneca.dart';
import 'package:userstogsuite/clases/user_to_gsuite.dart';

const programName = 'Generador de usuarios para GSuite desde Séneca';
const programCmd = 'userstogsuite';
const uso =
    'uso: $programCmd -f <fichero.csv> [-d <dominio>] [-x <sufijo>] [-u <unidad>] [-v]\n';
const version = '0.1.0';

void printAyuda(String flags) {
  print('$programName\n');
  print('$uso');
  print(flags);
  print('\n');
}

Future<int> main(List<String> arguments) async {
  var parser = ArgParser();
  ArgResults results;

  parser.addOption('file',
      abbr: 'f',
      help:
          'Nombre del fichero .csv exportado de Séneca con todos los campos.');
  parser.addOption('domain',
      abbr: 'd', defaultsTo: '@iesgbrenan.com', help: 'Domino de las cuentas.');
  parser.addOption('suffix',
      abbr: 'x',
      help:
          'Sufijo para los nombres de usuarios en las cuentas de correo electónico.');
  parser.addOption('unidad',
      abbr: 'u',
      defaultsTo: '/Alumnos',
      help: 'Unidad organizativa de las cuentas.');
  parser.addOption('passwd',
      abbr: 'p',
      defaultsTo: '12345678A',
      help: 'Contraseña por defecto para los alumnos que no tienen DNI.');
  parser.addFlag('version',
      abbr: 'v', negatable: false, help: 'Versión del programa.');

  try {
    results = parser.parse(arguments);
  } catch (e) {
    printAyuda(parser.usage);
    exit(1);
  }

  if (results['version'] == true) {
    print('Versión: $version');
    exit(0);
  }

  if (results['file'] == null) {
    print(
        'Debe especificar un fichero .csv con los datos de los alumnos exportados de Séneca.\n');
  }

  var isFirstLine = true;

  print(
      'First Name [Required],Last Name [Required],Email Address [Required],Password [Required],Org Unit Path [Required]');

  await File(results['file'])
      .openRead()
      .transform(utf8.decoder)
      .transform(LineSplitter())
      .forEach((line) {
    if (!isFirstLine) {
      var valores = line.replaceAll('"', '').replaceAll(', ', ' ').split(',');
      var alumno = UserFromSeneca(valores);
      print(UserToGsuite(
          alumno.Nombre,
          alumno.Primerapellido + ' ' + alumno.Segundoapellido,
          alumno.DNI == '' ? results['passwd'] : alumno.DNI,
          results['unidad'] ?? '/',
          results['suffix'],
          results['domain']));
    }
    isFirstLine = false;
  });

  return 0;
}

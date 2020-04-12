class UserFromSeneca {
  String Alumno;
  String EstadoMatricula;
  String NIdEscolar;
  String DNI;
  String Direccion;
  String Codigopostal;
  String Localidadderesidencia;
  String Fechadenacimiento;
  String Provinciaderesidencia;
  String Telefono;
  String Telefonodeurgencia;
  String CorreoElectronico;
  String Curso;
  String Ndelexpedientedelcentro;
  String Unidad;
  String Primerapellido;
  String Segundoapellido;
  String Nombre;
  String DNIPrimerturor;
  String PrimerapellidoPrimertutor;
  String SegundoapellidoPrimertutor;
  String NombrePrimertutor;
  String TlfPrimertutor;
  String SexoPrimertutor;
  String DNISegundotutor;
  String PrimerapellidoSegundotutor;
  String SegundoapellidoSegundotutor;
  String NombreSegundotutor;
  String TlfSegundotutor;
  String SexoSegundotutor;
  String Localidaddenacimiento;
  String Anodelamatricula;
  String Ndematriculasenestecurso;
  String Observacionesdelamatricula;
  String Provincianacimiento;
  String Paisdenacimiento;
  String Edad;
  String Nacionalidad;
  String Sexo;
  String Fechadematricula;
  String NSegSocial;

  UserFromSeneca(List<String> valores) {
    Alumno = valores[0];
    EstadoMatricula = valores[1];
    NIdEscolar = valores[2];
    DNI = valores[3];
    Direccion = valores[4];
    Codigopostal = valores[5];
    Localidadderesidencia = valores[6];
    Fechadenacimiento = valores[7];
    Provinciaderesidencia = valores[8];
    Telefono = valores[9];
    Telefonodeurgencia = valores[10];
    CorreoElectronico = valores[11];
    Curso = valores[12];
    Ndelexpedientedelcentro = valores[13];
    Unidad = valores[14];
    Primerapellido = valores[15];
    Segundoapellido = valores[16];
    Nombre = valores[17];
    DNIPrimerturor = valores[18];
    PrimerapellidoPrimertutor = valores[19];
    SegundoapellidoPrimertutor = valores[20];
    NombrePrimertutor = valores[21];
    TlfPrimertutor = valores[22];
    SexoPrimertutor = valores[23];
    DNISegundotutor = valores[24];
    PrimerapellidoSegundotutor = valores[25];
    SegundoapellidoSegundotutor = valores[26];
    NombreSegundotutor = valores[27];
    TlfSegundotutor = valores[28];
    SexoSegundotutor = valores[29];
    Localidaddenacimiento = valores[30];
    Anodelamatricula = valores[31];
    Ndematriculasenestecurso = valores[32];
    Observacionesdelamatricula = valores[33];
    Provincianacimiento = valores[34];
    Paisdenacimiento = valores[35];
    Edad = valores[36];
    Nacionalidad = valores[37];
    Sexo = valores[38];
    Fechadematricula = valores[39];
    NSegSocial = valores[40];
  }

  @override
  String toString() {
    return '';
  }
}

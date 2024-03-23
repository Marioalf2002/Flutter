/**
  Código de ejemplo de Dart
  Descripción: Este código contiene ejemplos los de Propiedades de las cadenas de texto, variables, constantes, operadores, estructuras condicionales, 
  ciclos, funciones, clases, colecciones, manejo de excepciones, programación asíncrona, IO de archivos, peticiones HTTP, 
  JSON y isolates en Dart.
 */

void main() {
 
  //Print
  print('Hola Mundo');

  String nombre = 'MarioWebDesigner';

  //Propiedades de las cadenas de texto
  nombre.toUpperCase(); // Convierte a mayúsculas
  print(nombre);
  print('Hola ${nombre.toUpperCase()}');

  nombre.toLowerCase(); // Convierte a minúsculas
  print(nombre);

  nombre.length; // Longitud de la cadena
  print(nombre.length);

  nombre.contains('Mario'); // Verifica si la cadena contiene otra cadena
  print(nombre.contains('Mario'));

  nombre.startsWith('Mario'); // Verifica si la cadena comienza con otra cadena
  print(nombre.startsWith('Mario'));

  nombre.endsWith('Hernandez'); // Verifica si la cadena termina con otra cadena
  print(nombre.endsWith('Hernandez'));

  nombre.indexOf('Hernandez'); // Obtiene la posición de una cadena dentro de otra cadena
  print(nombre.indexOf('Hernandez'));
  
  nombre.substring(0, 5); // Obtiene una subcadena de la cadena
  print(nombre.substring(0, 5));

  nombre.split(' '); // Divide la cadena en un arreglo de cadenas
  print(nombre.split(' '));

  nombre.replaceAll('Mario', 'John'); // Reemplaza una cadena por otra cadena
  print(nombre.replaceAll('Mario', 'John'));

  nombre.trim(); // Elimina los espacios en blanco al inicio y al final de la cadena
  print(nombre.trim());

  nombre.isEmpty; // Verifica si la cadena está vacía
  print(nombre.isEmpty);

  nombre.isNotEmpty; // Verifica si la cadena no está vacía
  print(nombre.isNotEmpty);

  //Variables
  
  //String
  String nombre = 'Mario Hernandez'; // Cadenas de texto
  print(nombre);  

  //int
  int edad = 22; // Números enteros
  print(edad);

  //double
  double altura = 1.80; // Números decimales
  print(altura);

  //bool
  bool esHombre = true; // true o false
  print(esHombre);

  //dynamic
  dynamic variableDinamica = 'Hola'; // Permite reasignación de valor
  print(variableDinamica);

  variableDinamica = 30; // Permite reasignación de valor
  print(variableDinamica);

  //Constantes
  const pi = 3.14; // No permite reasignación de valor
  print(pi);

  //Final
  final nombre2 = 'John'; //No permite reasignación de valor
  print(nombre2);

  //Late
  late String nombre3; //Permite reasignación de valor
  nombre3 = 'John';
  print(nombre3);

  //Interpolación de cadenas
  print('Mi nombre es $nombre y tengo $edad años.');

  //Operadores aritméticos
  print(5 + 2); // Suma
  print(5 - 2); // Resta
  print(5 * 2); // Multiplicación
  print(5 / 2); // División
  print(5 % 2); // Módulo

  //Operadores relacionales
  print(5 == 2); // Igual a
  print(5 != 2); // Diferente de
  print(5 > 2);  // Mayor que
  print(5 < 2);  // Menor que
  print(5 >= 2); // Mayor o igual que
  print(5 <= 2); // Menor o igual que
  
  //Operadores lógicos
  print(5 == 2 && 5 != 2); // AND
  print(5 == 2 || 5 != 2); // OR
  print(!(5 == 2));        // NOT

  //Estructuras condicionales
  //Sirve para tomar decisiones en el código y ejecutar un bloque de código u otro dependiendo de una condición
  if (5 == 2) {
    print('5 es igual a 2');
  } else {
    print('5 no es igual a 2');
  }

  //If anidado sirve para evaluar múltiples condiciones en el código
  if (5 == 2) {
    print('5 es igual a 2');
  } else if (5 > 2) {
    print('5 es mayor que 2');
  } else {
    print('5 no es igual a 2 y 5 no es mayor que 2');
  }

  //Switch Case
  //Sirve para evaluar una variable y ejecutar un bloque de código u otro dependiendo del valor de la variable
  String calificacion = 'A';
  switch (calificacion) {
    case 'A':
      print('Excelente');
      break;
    case 'B':
      print('Bueno');
      break;
    case 'C':
      print('Regular');
      break;
    case 'D':
      print('Pobre');
      break;
    default:
      print('Calificación inválida');
  }

  //Ciclos
  //For Loop
  for (int i = 0; i < 5; i++) {
    print(i);
  }

  //While Loop
  int i = 0;
  while (i < 5) {
    print(i);
    i++;
  }

  //Do While Loop
  i = 0;
  do {
    print(i);
    i++;
  } while (i < 5);

  //Break
  for (int i = 0; i < 5; i++) {
    if (i == 3) {
      break;
    }
    print(i);
  }

  //Continue
  for (int i = 0; i < 5; i++) {
    if (i == 3) {
      continue;
    }
    print(i);
  }

  //Funciones
  void saludar() {
    print('Hola');
  }

  saludar();

  void saludarConNombre(String nombre) {
    print('Hola $nombre');
  }

  saludarConNombre('John');

  String saludarConNombreYRetornar(String nombre) {
    return 'Hola $nombre';
  }

  print(saludarConNombreYRetornar('John'));

  //Parámetros opcionales
  void saludarConNombreYEdad(String nombre, [int edad]) {
    if (edad != null) {
      print('Hola $nombre, tienes $edad años');
    } else {
      print('Hola $nombre');
    }
  }

  saludarConNombreYEdad('John');
  saludarConNombreYEdad('John', 30);

  //Parámetros nombrados
  void saludarConNombreYEdad2({String nombre, int edad}) {
    if (edad != null) {
      print('Hola $nombre, tienes $edad años');
    } else {
      print('Hola $nombre');
    }
  }

  saludarConNombreYEdad2(nombre: 'John');
  saludarConNombreYEdad2(nombre: 'John', edad: 30);

  //Clases
  class Persona {
    String nombre;
    int edad;

    Persona(String nombre, int edad) {
      this.nombre = nombre;
      this.edad = edad;
    }

    void saludar() {
      print('Hola $nombre');
    }
  }

  Persona persona = Persona('John', 30);
  persona.saludar();
  
  //Herencia
  class Estudiante extends Persona {
    String escuela;

    Estudiante(String nombre, int edad, this.escuela) : super(nombre, edad);

    void estudiar() {
      print('$nombre está estudiando');
    }
  }

  Estudiante estudiante = Estudiante('John', 30, 'Escuela XYZ');
  estudiante.saludar();
  estudiante.estudiar();

  //Getters y Setters
  class Rectangulo {
    double ancho;
    double alto;

    Rectangulo(this.ancho, this.alto);

    double get area {
      return ancho * alto;
    }

    set area(double valor) {
      ancho = valor / alto;
    }
  }

  Rectangulo rectangulo = Rectangulo(5, 2);
  print(rectangulo.area);
  rectangulo.area = 10;
  print(rectangulo.ancho);

  //Clases abstractas
  abstract class Animal {
    void hacerSonido();
  }

  class Perro extends Animal {
    void hacerSonido() {
      print('Ladrar');
    }
  }

  Perro perro = Perro();
  perro.hacerSonido();

  //Interfaces
  class Volador {
    void volar() {
      print('Volando');
    }
  }

  class Pajaro extends Animal with Volador {
    void hacerSonido() {
      print('Piar');
    }
  }

  Pajaro pajaro = Pajaro();
  pajaro.hacerSonido();
  pajaro.volar();

  //Mixins
  mixin Nadador {
    void nadar() {
      print('Nadando');
    }
  }

  class Pez extends Animal with Nadador {
    void hacerSonido() {
      print('Blub');
    }
  }

  Pez pez = Pez();
  pez.hacerSonido();
  pez.nadar();

  //Genéricos
  class Caja<T> {
    T valor;

    Caja(this.valor);
  }

  Caja<int> caja = Caja(10);
  print(caja.valor);

  Caja<String> caja2 = Caja('Hola');
  print(caja2.valor);

  //Colecciones
  //List
  List<int> numeros = [1, 2, 3, 4, 5];
  print(numeros[0]);
  numeros.add(6);
  print(numeros);

  //Set
  Set<int> numeros2 = {1, 2, 3, 4, 5};
  numeros2.add(6);
  print(numeros2);

  //Map
  Map<String, int> edades = {
    'John': 30,
    'Doe': 25,
  };
  print(edades['John']);
  edades['Smith'] = 35;
  print(edades);

  //Iterar sobre colecciones
  for (int numero in numeros) {
    print(numero);
  }

  numeros.forEach((numero) {
    print(numero);
  });

  for (String nombre in edades.keys) {
    print(nombre);
  }

  for (int edad in edades.values) {
    print(edad);
  }

  edades.forEach((nombre, edad) {
    print('$nombre tiene $edad años');
  });

  //Manejo de excepciones
  try {
    int resultado = 12 ~/ 0;
    print(resultado);
  } catch (e) {
    print('Error: $e');
  } finally {
    print('Bloque finally');
  }

  //Lanzar excepciones
  void depositarDinero(int cantidad) {
    if (cantidad < 0) {
      throw Exception('La cantidad no puede ser negativa');
    }
  }

  try {
    depositarDinero(-200);
  } catch (e) {
    print('Error: $e');
  }

  //Programación asíncrona
  //Future
  Future<void> obtenerUsuario() {
    return Future.delayed(Duration(seconds: 2), () {
      print('Usuario obtenido');
    });
  }

  obtenerUsuario().then((value) {
    print('Usuario obtenido exitosamente');
  });

  //Async y Await
  Future<void> obtenerUsuario2() async {
    await Future.delayed(Duration(seconds: 2));
    print('Usuario obtenido');
  }

  obtenerUsuario2().then((value) {
    print('Usuario obtenido exitosamente');
  });

  //Streams
  Stream<int> contarStream(int max) async* {
    for (int i = 1; i <= max; i++) {
      yield i;
    }
  }

  contarStream(5).listen((evento) {
    print(evento);
  });

  //StreamController
  StreamController<int> controlador = StreamController<int>();

  controlador.stream.listen((evento) {
    print(evento);
  });

  for (int i = 1; i <= 5; i++) {
    controlador.sink.add(i);
  }

  controlador.close();

  //IO de archivos
  import 'dart:io';
  
  File archivo = File('test.txt');
  archivo.writeAsStringSync('Hola Mundo');
  String contenido = archivo.readAsStringSync();
  print(contenido);
  
  //Peticiones HTTP
  import 'package:http/http.dart' as http;

  void obtenerPublicacion() async {
    var respuesta = await http.get('https://jsonplaceholder.typicode.com/posts/1');
    print(respuesta.body);
  }

  obtenerPublicacion();

  //JSON
  import 'dart:convert';

  String cadenaJson = '{"nombre": "John", "edad": 30}';
  Map<String, dynamic> usuario = jsonDecode(cadenaJson);
  print(usuario['nombre']);
  print(usuario['edad']);

  Map<String, dynamic> usuario2 = {
    'nombre': 'John',
    'edad': 30,
  };
  
  String cadenaJson2 = jsonEncode(usuario2);
  print(cadenaJson2);

  //Isolates
  import 'dart:isolate';

  void funcionIsolate(SendPort sendPort) {
    sendPort.send('Hola desde el Isolate');
  }

  ReceivePort puertoRecepcion = ReceivePort();
  Isolate.spawn(funcionIsolate, puertoRecepcion.sendPort);
  puertoRecepcion.listen((mensaje) {
    print(mensaje);
  });
}

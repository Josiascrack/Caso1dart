import 'dart:io' show stdin, stdout;
import 'automovil.dart';

List<Automovil> automovilCompactados = [];
List<Automovil> automovilLujo = [];
List<Automovil> Vagonetas = [];
List<Automovil> Camionetas = [];
int tipo = 0;

void main(List<String> args) {
  iniciarValores();
  menu();
}

void iniciarValores() {
  int x = 1;
  while (x <= 1) {
    Automovil auto = new Automovil(1000, 'Audi', 2021, 30000, 1);
    Automovil auto1 = new Automovil(1000, 'Lamborghini', 2022, 200000, 1);
    Automovil auto2 = new Automovil(1000, 'Ferrari', 2022, 500000, 1);
    Automovil auto3 = new Automovil(1000, 'SEAT', 2018, 20000, 1);

    automovilCompactados.addAll([auto, auto1, auto2, auto3]);

    Automovil auto4 = new Automovil(900, 'Audi A3', 2015, 40000, 2);
    Automovil auto5 = new Automovil(900, 'Chevrolet Spark', 2010, 10000, 2);
    Automovil auto6 = new Automovil(900, 'Citroen C1', 2020, 15600, 2);
    Automovil auto7 = new Automovil(900, 'Fiat Panda', 2003, 19000, 2);

    automovilLujo.addAll([auto4, auto5, auto6, auto7]);

    Automovil auto8 =
        new Automovil(5000, 'Porsche Panamera Sport Turimso', 2013, 10000, 3);
    Automovil auto9 =
        new Automovil(5000, 'SEAT Leon CUPRA ST', 2020, 500000, 3);
    Automovil auto10 =
        new Automovil(5000, 'Audi RS4 / RS6 Avant', 2018, 30000, 3);
    Automovil auto11 = new Automovil(
        5000, 'Mercedes-AMG E63 S Estate 4Matic +', 2022, 20000, 3);

    Vagonetas.addAll([auto8, auto9, auto10, auto11]);

    Automovil auto12 = new Automovil(7000, 'Ram 1500', 2022, 45000, 4);
    Automovil auto13 = new Automovil(7000, 'Toyota Tundra', 2022, 100000, 4);
    Automovil auto14 =
        new Automovil(7000, 'Ford F-150 Raptor', 2019, 150000, 4);
    Automovil auto15 = new Automovil(7000, 'Honda Ridgeline', 2020, 50000, 4);

    Camionetas.addAll([auto12, auto13, auto14, auto15]);
    x++;
  }
}

void menu() {
  stdout.write("Menu Principal\n");
  stdout.write("1.Automoviles Compactados\n");
  stdout.write("2.Automoviles de Lujo\n");
  stdout.write("3.Vagonetas\n");
  stdout.write("4.Camionetas\n");
  stdout.write("5.Salir\n");
  stdout.write("Elegir una opcion: ");
  var valor = stdin.readLineSync().toString();
  int n = int.parse(valor);
  switch (n) {
    case 1:
      tipo = 1;
      submenu(tipo);
      break;
    case 2:
      tipo = 2;
      submenu(tipo);

      break;
    case 3:
      tipo = 3;
      submenu(tipo);

      break;
    case 4:
      tipo = 4;
      submenu(tipo);
      break;
    case 5:
      stdout.write("Gracias por usar nuestro servicios\n");
      break;
    default:
      stdout.write("Por favor eliga una opcion existente (1-5)\n");
      menu();
  }
}

void submenu(int tipo) {
  do {
    stdout.write("\n");
    stdout.write("1.Registrar\n");
    stdout.write("2.Listar\n");
    stdout.write("3.Salir\n");
    stdout.write("Elegir una opcion: ");
    var valor = stdin.readLineSync().toString();
    int x = int.parse(valor);
    switch (x) {
      case 1:
        registrar(tipo);
        break;
      case 2:
        listar(tipo);
        break;
      case 3:
        menu();
        break;
      default:
        stdout.write("Por favor eliga una opcion existente (1-3)\n");
        menu();
    }
  } while (tipo < 5);
}

void registrar(int tipo) {
  if (tipo == 1) {
    stdout.write("\nNumero de Serie: ");
    var numero = stdin.readLineSync().toString();
    stdout.write("Marca: ");
    var marca = stdin.readLineSync().toString();
    stdout.write("Año: ");
    var anio = stdin.readLineSync().toString();
    stdout.write("Precio: ");
    var precio = stdin.readLineSync().toString();
    Automovil autoNuevo = new Automovil(
        int.parse(numero), marca, int.parse(anio), double.parse(precio), 1);
    automovilCompactados.add(autoNuevo);
  } else if (tipo == 2) {
    stdout.write("\nNumero de Serie: ");
    var numero = stdin.readLineSync().toString();
    stdout.write("Marca: ");
    var marca = stdin.readLineSync().toString();
    stdout.write("Año: ");
    var anio = stdin.readLineSync().toString();
    stdout.write("Precio: ");
    var precio = stdin.readLineSync().toString();
    Automovil autoNuevo = new Automovil(
        int.parse(numero), marca, int.parse(anio), double.parse(precio), 2);
    automovilLujo.add(autoNuevo);
  } else if (tipo == 3) {
    stdout.write("\nNumero de Serie: ");
    var numero = stdin.readLineSync().toString();
    stdout.write("Marca: ");
    var marca = stdin.readLineSync().toString();
    stdout.write("Año: ");
    var anio = stdin.readLineSync().toString();
    stdout.write("Precio: ");
    var precio = stdin.readLineSync().toString();
    Automovil autoNuevo = new Automovil(
        int.parse(numero), marca, int.parse(anio), double.parse(precio), 3);
    Vagonetas.add(autoNuevo);
  } else if (tipo == 4) {
    stdout.write("\nNumero de Serie: ");
    var numero = stdin.readLineSync().toString();
    stdout.write("Marca: ");
    var marca = stdin.readLineSync().toString();
    stdout.write("Año: ");
    var anio = stdin.readLineSync().toString();
    stdout.write("Precio: ");
    var precio = stdin.readLineSync().toString();
    Automovil autoNuevo = new Automovil(
        int.parse(numero), marca, int.parse(anio), double.parse(precio), 4);
    Camionetas.add(autoNuevo);
  }
}

void listar(int tipo) {
  if (tipo == 1) {
    stdout.write("\nAutomoviles Compactados\n\n");
    for (int i = 0; i < automovilCompactados.length; i++) {
      int pocision = i + 1;
      stdout.write("$pocision.");
      automovilCompactados[i].mensaje();
      stdout.write("\n");
    }
  } else if (tipo == 2) {
    stdout.write("\nAutos Lujo\n\n");
    for (int i = 0; i < automovilLujo.length; i++) {
      int pocision = i + 1;
      stdout.write("$pocision.");
      automovilLujo[i].mensaje();
      stdout.write("\n");
    }
  } else if (tipo == 3) {
    stdout.write("\nVagonetas\n\n");
    for (int i = 0; i < Vagonetas.length; i++) {
      int pocision = i + 1;
      stdout.write("$pocision.");
      Vagonetas[i].mensaje();
      stdout.write("\n");
    }
  } else if (tipo == 4) {
    stdout.write("\nCamionetas\n\n");
    for (int i = 0; i < Camionetas.length; i++) {
      int pocision = i + 1;
      stdout.write("$pocision.");
      Camionetas[i].mensaje();
      stdout.write("\n");
    }
  }
}

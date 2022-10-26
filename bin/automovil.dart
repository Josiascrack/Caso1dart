import 'tipoautomovil.dart';

class Automovil extends TipoAutomovil {
  int? numero_serie;
  String? marca;
  int? anio;
  double? precio;

   Automovil(int numero_serie, String marca, int anio, double precio, int tipo)
      : super(tipo) {
    this.numero_serie = numero_serie;
    this.marca = marca;
    this.anio = anio;
    this.precio = precio;
  }
   void set setNumero_serie(int numero_serie) {
    this.numero_serie = numero_serie;
  }

  void set setMarca(String marca) {
    this.marca = marca;
  }

  void set setAnio(int anio) {
    this.anio = anio;
  }

  void set setPrecio(double precio) {
    this.precio = precio;
  }

  get getNumero_serie {
    return this.numero_serie;
  }

  get getMarca {
    return this.marca;
  }

  get getAnio {
    return this.anio;
  }

  get getPrecio {
    return this.precio;
  }
    void mensaje() {
    print("${numero_serie} - ${marca} - ${anio}  - ${precio} -  ${tipo}");
  }

}

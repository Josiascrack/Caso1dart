
void main(List<String> args) {
  Carro carro = new Carro();
  carro.velocidad('300 km/h');
  carro.turbo = true;
  carro.infoCarro();

  Trailer trailer = new Trailer();

  trailer.cilindros = 16;
  trailer.combustible = 'Disesel';
  trailer.remolque = true;
  trailer.dobleremolque = false;

  trailer.infoTrailer();
  print('Trailer: ${trailer.cilindros}, ${trailer.combustible}');
  
}

class automovil{

  int ?cilindros;
  int ?llantas;
  int ?puertas;
  String ?combustible;

  void velocidad(String velocidad){
    print('Velocidad; $velocidad');
  }

}

class Carro extends automovil{

  bool ?turbo;

  void infoCarro(){
    print('Turbo: $turbo');
  }

}

class Trailer extends automovil{

  bool ?remolque;
  bool ?dobleremolque;

  void infoTrailer(){
    print('Remolque: $remolque Doble Remolque: $dobleremolque');
  }
}
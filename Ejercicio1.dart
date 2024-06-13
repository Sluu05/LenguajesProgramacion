import 'dart:math';

class Circulo {
  double radio;
  String color;

 
  Circulo(this.radio, this.color);//Constructor

  double calcularArea(){ //Método para calcular el área
    return pi * radio * radio;
  }

  double calcularPerimetro(){ //Método para calcular el perímetro
    return 2 * pi * radio;
  }
}

void main() {
  Circulo circulo = new  Circulo(6, 'Lila'); 

 
  print('Radio: ${circulo.radio}');
  print('Color: ${circulo.color}');
  print('Área: ${circulo.calcularArea()}');
  print('Perímetro: ${circulo.calcularPerimetro()}');
}

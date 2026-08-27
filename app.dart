void main() {
  Dibujo dibujo = new Dibujo();
  FormaGeometrica circulo = new Circulo(12);
  dibujo.agregarForma(circulo);
  FormaGeometrica rectangulo = new Rectangulo(10, 20);
  dibujo.agregarForma(rectangulo);
  FormaGeometrica triangulo = new Triangulo(30, 40);
  dibujo.agregarForma(triangulo);
  print("el area total de todass las figuras es ${dibujo.calcularArea()}");
}

abstract class FormaGeometrica {
  double calcularArea();
}

class Circulo implements FormaGeometrica {
  double? radio;
  Circulo(this.radio);
  @override
  double calcularArea() {
    return 3.14 * radio! * radio!;
  }
}

class Rectangulo implements FormaGeometrica {
  double? ancho;
  double? alto;
  Rectangulo(this.ancho, this.alto);
  @override
  double calcularArea() {
    return ancho! * alto!;
  }
}

class Triangulo implements FormaGeometrica {
  double? base;
  double? altura;
  Triangulo(this.base, this.altura);
  @override
  double calcularArea() {
    return base! * altura! / 2;
  }
}

class Dibujo {
  List<FormaGeometrica> formas = [];
  void agregarForma(FormaGeometrica forma) {
    formas.add(forma);
  }

  double calcularArea() {
    double areaTotal = 0;
    for (var forma in formas) {
      areaTotal = areaTotal + forma.calcularArea();
    }
    return areaTotal;
  }
}

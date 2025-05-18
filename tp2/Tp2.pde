// ejercicio: animar texto con variables

// variables globales
String texto1 = "El juego que voy a presentar";
String texto2 = "se llama: LIMBO";

String texto3 = "Es un juego de plataforma y puzzles, tiene jugabilidad";
String texto4 = "2D y tiene un estilo minimalista(en blanco y negro)";
String texto5 = "que crea un ambiente oscuro, triste y tenso.";

String texto6 = "El objetivo principal del chico es buscar a su hermana desaparecida.";
String texto7 = "En el camino, se enfrenta a trampas mortales, criaturas extrañas";
String texto8 = "y otros niños hostiles.";

String texto9 = "A medida que avanza, los entornos se vuelven más"; 
String texto10 = "industriales y mecánicos, dejando atrás la naturaleza,";
String texto11 = "como si fuera un viaje simbólico.";

String texto12 = "El final es abierto e interpretativo,";
String texto13 = "el juego nunca lo explica directamente.";
String texto14 = "parte de su magia es que cada jugador saque su propia conclusión.";

String texto15 = "¡Gracias por ver!";

float posY1;
float posY2;
float opacidadTexto1 = 255;
float opacidadTexto2 = 255;
float posTextoPantalla2;
float posTextoPantalla3;
float posTextoPantalla4 = 260; // Ya en posición final
float posTextoPantalla5;

PImage limbo1;
PImage limbo2;
PImage limbo3;
PImage limbo4;
PImage limbo5;

int pantalla = 0;
int tiempoPantalla = 0;
boolean textoListo = false;
PFont miFuente;

void setup() {
  size(640, 480);
  background(0);
  textAlign(CENTER, CENTER);
  textSize(25);
    miFuente = loadFont("CourierNewPS-BoldMT-48.vlw");
     textFont(miFuente);

  posY1 = height;
  posY2 = height + 80;
  posTextoPantalla2 = -400;
  posTextoPantalla3 = width + 400;
  posTextoPantalla5 = -100;

  limbo1 = loadImage("limbo1.jpg");
  limbo2 = loadImage("limbo2.jpg");
  limbo3 = loadImage("limbo3.jpg");
  limbo4 = loadImage("limbo4.jpg");
  limbo5 = loadImage("limbo5.jpg");
}

void draw() {
  background(0);

  if (pantalla == 0) {
    image(limbo1, 0, -80, 640, 480);
    fill(255, opacidadTexto1);
    textSize(28);
    text(texto1, width / 2, posY1);
    fill(255, opacidadTexto2);
    text(texto2, width / 2, posY2);

    posY1 -= 1;
    posY2 -= 1;

    if (posY1 < 370) opacidadTexto1 -= 3;
    if (posY2 < 370) opacidadTexto2 -= 3;

    if (opacidadTexto1 < 0) opacidadTexto1 = 0;
    if (opacidadTexto2 < 0) opacidadTexto2 = 0;

    if (opacidadTexto1 == 0 && opacidadTexto2 == 0) {
      pantalla = 1;
      textoListo = false;
      tiempoPantalla = millis();
    }
  }

  else if (pantalla == 1) {
    image(limbo2, 0, 0, 640, 480);
    fill(255);
    textSize(19);
    text(texto3, posTextoPantalla2, 300+40);
    text(texto4, posTextoPantalla2, 340+40);
    text(texto5, posTextoPantalla2, 380+40);

    if (posTextoPantalla2 < 320) {
      posTextoPantalla2 += 4;
    } else if (!textoListo) {
      textoListo = true;
      tiempoPantalla = millis();
    }

    if (textoListo && millis() - tiempoPantalla > 5000) {
      pantalla = 2;
      textoListo = false;
      tiempoPantalla = millis();
    }
  }

  else if (pantalla == 2) {
    image(limbo3, 0, 0, 640, 480);
    fill(255);
    textSize(15);
    text(texto6, posTextoPantalla3, 200+140);
    text(texto7, posTextoPantalla3, 240+140);
    text(texto8, posTextoPantalla3, 280+140);

    if (posTextoPantalla3 > 320) {
      posTextoPantalla3 -= 4;
    } else if (!textoListo) {
      textoListo = true;
      tiempoPantalla = millis();
    }

    if (textoListo && millis() - tiempoPantalla > 5000) {
      pantalla = 3;
      textoListo = false;
      tiempoPantalla = millis();
    }
  }

  else if (pantalla == 3) {
    image(limbo4, 0, 0, 640, 480);
    fill(255);
    textSize(18); // letra un poco más pequeña
    text(texto9, 320, posTextoPantalla4);
    text(texto10, 320, posTextoPantalla4 + 40);
    text(texto11, 320, posTextoPantalla4 + 80);

    if (!textoListo) {
      textoListo = true;
      tiempoPantalla = millis();
    }

    if (textoListo && millis() - tiempoPantalla > 5500) {
      pantalla = 4;
      textoListo = false;
      tiempoPantalla = millis();
    }
  }

  else if (pantalla == 4) {
    image(limbo5, 0, 0, 640, 480);
    fill(255);
    textSize(16);
    text(texto12, 320, 320+50);
    text(texto13, 320, 360+50);
    text(texto14, 320, 400+50);

    if (!textoListo) {
      textoListo = true;
      tiempoPantalla = millis();
    }

    if (textoListo && millis() - tiempoPantalla > 5500) {
      pantalla = 5;
      textoListo = false;
    }
  }

  else if (pantalla == 5) {
    background(0);
    fill(255);
    textSize(45);
    text(texto15, width / 2, height / 2);
  }
}
void keyPressed() {
  if (key == ' ') {
    // reiniciar variables
    pantalla = 0;
    textoListo = false;
    tiempoPantalla = 0;

    posY1 = height;
    posY2 = height + 80;
    opacidadTexto1 = 255;
    opacidadTexto2 = 255;
    posTextoPantalla2 = -400;
    posTextoPantalla3 = width + 400;
    posTextoPantalla4 = 260;
    posTextoPantalla5 = -100;
  }
}

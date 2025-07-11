//https://youtu.be/w3ELrzg-VJg

PImage img1;

float zoomCirculos = 1;

int asd;
int ddd;
int sss;
color color1;
color color2;

void setup() {
  size(800, 400);
  img1 = loadImage("img1.png");
  reiniciar();
}

void reiniciar() {
  asd = 50;
  ddd = 10;
  sss = 10;
  color1 = color(255);
  color2 = color(0);
  zoomCirculos = 1;
}

void draw() {
  background(color1);
  println(mouseX + " / " + mouseY);

  noStroke();
  pushMatrix();
  translate(400, 0);

  fill(color2);
  for (int y = 10; y < 400; y += 80) {
    for (int x = 10; x < 400; x += 80) {
      rect(x - 10, y - 10, 40, 40);
    }
  }
  for (int y = asd; y < 400; y += 80) {
    for (int x = asd; x < 400; x += 80) {
      rect(x - 10, y - 10, 40, 40);
    }
  }

  fill(color1);
  for (int y = 10; y < 200; y += 40) {
    for (int x = 10; x < 200; x += 40) {
      ellipse(x * 2, y * 2, ddd * 2, ddd * 2);
    }
  }
  for (int y = 30; y < 200; y += 40) {
    for (int x = 30; x < 200; x += 40) {
      ellipse(x * 2, y * 2, ddd * 2, ddd * 2);
    }
  }

  for (int y = 10; y < 200; y += 40) {
    for (int x = 30; x < 200; x += 40) {
      float tam = calcularTamaño(sss * zoomCirculos);
      float cx = x * 2;
      float cy = y * 2;
      float mx = mouseX - 400;
      float my = mouseY;

      if (mouseX >= 600 && mouseX <= 800) {
        fill(random(255), random(255), random(255));
      } else {
        fill(color2);
      }
      if (estaDentroCirculo(mx, my, cx, cy, tam/2)) {
        stroke(255, 0, 0);
        strokeWeight(3);
      } else {
        noStroke();
      }
      ellipse(cx, cy, tam, tam);
    }
  }

  for (int y = 30; y < 200; y += 40) {
    for (int x = 10; x < 200; x += 40) {
      float tam = calcularTamaño(sss * zoomCirculos);
      float cx = x * 2;
      float cy = y * 2;
      float mx = mouseX - 400;
      float my = mouseY;
      if (mouseX >= 400 && mouseX < 600) {
        fill(random(255), random(255), random(255));
      } else {
        fill(color2);
      }
      if (estaDentroCirculo(mx, my, cx, cy, tam/2)) {
        stroke(255, 0, 0);
        strokeWeight(3);
      } else {
        noStroke();
      }
      ellipse(cx, cy, tam, tam);
    }
  }

  stroke(0);
  float grosor = map(mouseY, 0, height, 1, 5);
  strokeWeight(grosor);
  for (float x = 0; x <= 400; x += 40) {
    dibujarLinea(x, 0, x, 400);
  }
  for (float y = 0; y <= 400; y += 40) {
    dibujarLinea(0, y, 400, y);
  }

  popMatrix();

  image(img1, 0, 0, 400, 400);

  if (mouseX > width/2 && mouseX < width) {
    sss = mouseY / 20;
    ddd = mouseX / 40;
  }
}

void keyPressed() {
  if (key == ' ') reiniciar();
}

void mousePressed() {
  if (mouseButton == LEFT) {
    color1 = color(random(255), random(255), random(255));
    color2 = color(random(255), random(255), random(255));
  } else if (mouseButton == RIGHT) {
    zoomCirculos += 0.5;
    if (zoomCirculos > 1.5) zoomCirculos = 1;
  }
}

float calcularTamaño(float base) {
  return base * 2;
}

void dibujarLinea(float x1, float y1, float x2, float y2) {
  line(x1, y1, x2, y2);
}

boolean estaDentroCirculo(float px, float py, float cx, float cy, float radio) {
  return dist(px, py, cx, cy) <= radio;
}

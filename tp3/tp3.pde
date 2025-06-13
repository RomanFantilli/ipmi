//https://youtu.be/qUSm_nza8qo

PImage img1;

float zoomCirculos = 1;

void dibujarLinea(float x1, float y1, float x2, float y2) {
  line(x1, y1, x2, y2);
}

int asd;
int ddd;
int sss;
color c1;
color c2;

void setup() {
  size(800, 400);
  img1 = loadImage("img1.png");
  reiniciar();
}

void reiniciar() {
  asd = 50;
  ddd = 10;
  sss = 10;
  c1 = color(255);
  c2 = color(0);
  zoomCirculos = 1;
}
void draw() {
  background(120);
  println(mouseX + " / " + mouseY);
  noStroke();
  pushMatrix();
  translate(400, 0);
  fill(c2);

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

  fill(c1);
  for (int y = 10; y < 400; y += 80) {
    for (int x = asd; x < 400; x += 80) {
      rect(x - 10, y - 10, 40, 40);
    }
  }
  for (int y = asd; y < 400; y += 80) {
    for (int x = 10; x < 400; x += 80) {
      rect(x - 10, y - 10, 40, 40);
    }
  }

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

  fill(c2);
  for (int y = 10; y < 200; y += 40) {
    for (int x = 30; x < 200; x += 40) {
      ellipse(x * 2, y * 2, sss * 2 * zoomCirculos, sss * 2 * zoomCirculos);
    }
  }
  for (int y = 30; y < 200; y += 40) {
    for (int x = 10; x < 200; x += 40) {
      ellipse(x * 2, y * 2, sss * 2 * zoomCirculos, sss * 2 * zoomCirculos);
    }
  }
  stroke(0);
  strokeWeight(1.2);
  for (float x = 0; x <= 400; x += 40) {
    dibujarLinea(x, 0, x, 400);
  }
  for (float y = 0; y <= 400; y += 40) {
    dibujarLinea(0, y, 400, y);
  }


  popMatrix();

  image(img1, 0, 0, 400, 400);

  if (mouseX > width / 2 && mouseX < width) {
    sss = mouseY / 20;
  }
  if (mouseX > width / 2 && mouseX < width) {
    ddd = mouseX / 40;
  }
}

void keyPressed() {
  if (key == ' ') {
    reiniciar();
  }
}

void mousePressed() {
  if (mouseButton == LEFT) {
    c1 = color(random(255), random(255), random(255));
    c2 = color(random(255), random(255), random(255));
  } else if (mouseButton == RIGHT) {
    zoomCirculos += 0.5;
    if (zoomCirculos > 1.5) {
      zoomCirculos = 1;
    }
  }
}

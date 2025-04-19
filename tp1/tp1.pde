PImage miObjetoFavorito;

void setup(){  //se ejecuta una sola vez al iniciar el programa
  //funcion(param1, param2, ...);
  size( 800, 400 );  //tamano de la ventana
  background( 200 ); //color del fondo  
  
  // 2) cargar la imagen de la carpeta data
  miObjetoFavorito = loadImage("pava.png");
}

void draw(){  //se ejecuta de forma ciclica X veces por segundo (FPS> Frames Per Second)

  background(200); //color del fondo

  // 3) mostrar imagen en la parte izquierda
  image(miObjetoFavorito, -205, 0);

  //limitar el area de dibujo a la mitad derecha
  clip(400, 0, 400, 400);

  //parte derecha de la pantalla
  strokeWeight(1);
  fill(255); 
  rect(400, 0, 400, 400);
  
  //cortinas
  stroke(180);
  strokeWeight(3);
  fill(200);
  rect(400, 0, 100, 100);
  rect(500, 0, 100, 115);
  rect(600, 0, 100, 110);
  rect(700, 0, 100, 120);

  //mantel verde
  fill(color(#8eb36b));
  noStroke();
  ellipse(600, 335, 1050, 140);
  
  //cuerpo de la pava
  fill(180);
  stroke(100);
  strokeWeight(2);
  ellipse(600, 230, 170, 270); 

  //base rectangular
  fill(50);
  noStroke(); 
  rect(530, 340, 145, 27);

//pico de la pava
stroke(50);
strokeWeight(2);
fill(180);
triangle(521, 180, 509, 108, 564, 116);

//para hacer el pico
noStroke();
fill(180);
triangle(523, 182, 511, 110, 566, 118);

//rectangulo negro arriba
fill(50);
rect(553, 80, 140, 25, 20);
rect(643, 100, 50, 20,15);

fill(180);
rect(544, 93, 100, 25, 15); //forma de la pava rectangulo arriba

stroke(100);
triangle(539, 112, 545, 101, 548, 118);
//triangulo entre el pico y lo de arriba
noStroke();
triangle(541, 114, 546, 101, 558, 143);

fill(50);
noStroke(); // cosito de arriba (cuarto de circulo)
  arc(595, 85, 110, 50, -HALF_PI, 0, PIE);
  
  rect(585, 65, 20, 20); //cuadrado que rellena el cosito
  
  //rectangulos para el mango
  rect(678, 80, 75, 40,10);
  rect(709, 80, 45, 150, 10);
  
  quad(752, 227, 668, 321, 681, 260, 710, 220); 
  
  stroke (255);
  strokeWeight(16);

  line(757, 126, 757, 234);
  line(740, 249, 760, 205);
  stroke(200);
  line(747, 84, 695, 65);
  line(730, 73, 770, 112);
  line(760, 115,750, 85);
  strokeWeight(10);
  line(695, 122, 678, 122);
  
  noStroke();
  fill(50);
  ellipse(725, 177, 50, 50);
  
  fill(255);
  ellipse(697, 138, 43, 43);
  
  fill(70);
  triangle(688, 260, 647, 118, 675, 118);
  stroke(70);
  line(684, 250, 677, 200);
  stroke(100);
  strokeWeight(3);
  line(522, 177, 542, 114);

noStroke();
fill(200);
ellipse(590, 220, 30, 240); //reflejo de la pava

fill(50);
triangle(532, 340, 551, 342, 529, 307);
//triangulos laterales base
fill(50);
triangle(670, 340, 672, 305, 648, 343);

stroke(180);
strokeWeight(3);
line(700,51,700,75);


//linea para armar la base
noFill();
stroke(50);
strokeWeight(18);
arc(600, 324, 122, 30, 0, PI);

//linea de acero entre la pava y la base
noFill();
stroke(200);
strokeWeight(6);
arc(600, 310, 140, 32, 0, PI);

//linea mantel para armar base
noFill();
stroke(color(#8eb36b));
strokeWeight(25);
arc(600, 346, 160, 50, 0, PI);

 noStroke();
 fill(160,48,48);
 ellipse(599, 345, 30, 12);

  // linea divisoria en el centro de la pantalla
  noClip();
  strokeWeight(10);
  stroke(0);
  line(400, 0, 400, 400);

  println(mouseX + " / " + mouseY);
}

void mouseMoved() {
  strokeWeight(2);
  line(mouseX, 0, mouseX, 400);
  line(0, mouseY, 800, mouseY);
}

PImage imagen_1;
PImage imagen_2;
PImage imagen_3;
PImage imagen_4;
PImage imagen_5;
PImage imagen_6;
PImage imagen_7;
PImage mouse;

String pantalla; 

float tamaño;
float size;
float biggersmaller;
float R, G, B;
float x1, x2, x3, x4, x5, x6;

color Color1, Color2, Color3, Color4, Color5, Color6, Color7;

float opacidad;
float alpha1, alpha2, alpha3, alpha4, alpha5;
float alphatext1, alphatext2;
float reinicio;

float centroX = 320;
float centroY = 400;
float diametro = 50;
float distanciaMouseBoton;

void setup () {
  
  size(640,480);
  imagen_1 = loadImage("imagen 1.png");
  imagen_2 = loadImage("imagen 2.jpg");
  imagen_3 = loadImage("imagen 3.jpg");
  imagen_4 = loadImage("imagen 4.jpg");
  imagen_6 = loadImage("imagen 6.jpg");
  imagen_7 = loadImage("imagen 7.png");
  mouse = loadImage("Mouse.png");
  
  pantalla = "pantalla1";
  
  tamaño = 1;
  size = 36;
  biggersmaller = 1;
  R = 255;
  G = 0;
  B = 0;
  Color1 = color(50, 100, 250, alpha1);
  Color2 = color(50, 100, 250, alpha2);
  opacidad = 0;
  alpha1 = 0;
  alpha2 = 0;
  alpha3 = 0;
  alpha4 = 0;
  
  x1 = -300;
  x2 = 940;
  x3 = -300;
  x4 = 940;
  x5 = -300;
  x6 = 940;
  
  Color3 = color(255, 100);
  Color4 = color(200, 100);
  Color5 = color(200, 100);
  Color6 = color(200, 100);
  Color7 = color(200, 100);
  
  reinicio = 0;
  
}

void draw() {
  
  println(frameCount/60);
  if (pantalla.equals("pantalla1")){
    
    if (frameCount != 0 && reinicio == 0){
      frameCount = 0;
      reinicio += 1;
    }
    
    image(imagen_1,-75,0);
    
    if (biggersmaller == 1) {
      size += 0.1;
      
      if (R != 255){
        R += 1;
        G -= 0.5;
        B -= 0.5;
      }
      if (size >= 42) {
        biggersmaller = 2;
      }
    }
    else if (biggersmaller == 2) {
      size -= 0.1;
      R -= 1;
      G += 0.5;
      B += 0.5;
      if (size <= 36) {
        biggersmaller = 1;
      }
    }
  
    textSize(size);
    textAlign(CENTER,CENTER);
    fill(0);
    text("Bienvenido al BlackJack",320,152);
    fill(R,G,B);
    text("Bienvenido al BlackJack",320,150);
    textSize(25);
    fill(0);
    text("Guia de como jugar",320,242);
    fill(250,100,50);
    text("Guia de como jugar",320,240);
    
    fill(255);
    textSize(18);
    text("Si no quieres esperar usa la D (=>) y la A (<=) para moverte entre las diapositivas", 320, 22);
    
    if (frameCount/60 > 8) {
      pantalla = "pantalla2";
      reinicio = 0;
    }
     
  }
  else if (pantalla.equals("pantalla2")){
    
    if (frameCount != 0 && reinicio == 0){
      frameCount = 0;
      reinicio += 1;
    }
    
    image(imagen_2,-150,0);
    
    if (tamaño < 40) {
      tamaño += 0.5; 
    }
    
    if (tamaño > 25){
      if (opacidad < 255) {
        opacidad += 3; 
      }
    }
    
    textSize(tamaño);
    textAlign(CENTER,CENTER);
    
    fill(255,0,0);
    text("Objetivo del juego",320,150);
    
    textSize(25);
    fill(255, opacidad);
    text("1. Acercarse a 21 sin pasarse ",320,220);
    text("2. Superar al dealer",320,250);
    text("3. Salir con más plata de la inicial",320,280);
    
    fill(50,100,250);
    text("Nota",110,370);
    fill(0);
    text("el juego es únicamente contra el crupier",350,370);
    text("y no contra todos los jugadores",350,400);
    
    if (frameCount/60 > 8) {
      pantalla = "pantalla3";
      reinicio = 0;
    }
  }
  
  
  else if (pantalla.equals("pantalla3")){
    
    if (frameCount != 0 && reinicio == 0){
      frameCount = 0;
      reinicio += 1;
    }
    
    image(imagen_3,-75,0);
    fill(255,50);
    rect (0,0, 640, 480);
    
    if (opacidad < 255) {
      opacidad += 3; 
    }
    
    textSize(40);
    textAlign(CENTER,CENTER);
    fill(255,0,0,opacidad);
    text("Reglas",320,50);
    
    if (frameCount/60 > 2 && x1 < 320){
      x1 += 4;
      println (frameCount/60);
    }
    
    else if (frameCount/60 > 6 && x2 > 320){
      x2 -= 4;
      println (frameCount/60);
    }
    
    else if (frameCount/60 > 10 && x3 < 320){
      x3 += 4;
      println (frameCount/60);
    }
    
    else if (frameCount/60 > 14 && x4 > 320){
      x4 -= 4;
      println (frameCount/60);
    }
    
    else if (frameCount/60 > 18 && x5 < 320){
      x5 += 4;
      println (frameCount/60);
    }
    
    else if (frameCount/60 > 22 && x6 > 320){
      x6 -= 4;
      println (frameCount/60);
    }
      
    
    fill(0);
    textSize(25);
    text("1- El crupier reparte 2 cartas por jugador, tapada y otra no.",x1,120);
    text("2- Se realiza una apuesta inicial",x2,160);
    text("3- El crupier iguala la apuesta de cada jugador",x3,200);
    text("4- Se dan vuelta las cartas boca abajo y se",x4,240);
    text("realiza la segunda ronda de apuestas",x4,265);
    text("5- Se suman los valores de las cartas intentando",x5,305);
    text("aproximarse lo máximo posible a 21 y en orden se pasa a",x5,330);
    text("pedir o a quedarse para mejorar o terminar la mano.",x5,365);
    text("6- En caso de empate entre el jugador y el",x6,405);
    text("crupier, el último es quien gana",x6,430);
    
    if (frameCount/60 > 30) {
      pantalla = "pantalla4";
      reinicio = 0;
    }
    
  }
  
  
  else if (pantalla.equals("pantalla4")){
    
    if (frameCount != 0 && reinicio == 0){
      frameCount = 0;
      reinicio += 1;
    }
    
    image(imagen_4,-75,0);
    
    fill (0, alpha1);
    rect (0, 0, 320, 480);
    
    fill (255, alpha2);
    rect (320, 0, 320, 480);
    
    textSize(40);
    textAlign(CENTER,CENTER);
    fill(255,0,0);
    text("Hit or Stand",320,70);
    
    textSize(30);
    fill(255);
    text("Ahora puedes pedir o quedarte",320,120);
    
    textSize(20);
    fill(0, alphatext2);
    text("Una vez que no quieres pedir",480,240);
    text("más cartas es cuando te quedas",480,260);
    text("y termina tu mano",480,280);
    text("Una vez que te quedaste ya no",480,320);
    text("puedes ni pedir ni apostar más",480,340);
    text("hasta la siguiente ronda",480,360);
    
    
    textSize(20);
    fill(255, alphatext1);
    text("Si pides el crupier dará vuelta otra",160,240);
    text("carta con la que sumar",160,260);
    text("Si te pasas de 21 quedas fuera",160,300);
    text("Cada jugador puede pedir todas las",160,340);
    text("cartas que quiera en su mano",160,360);
    text("Si juntas 7 cartas y aún no pasas",160,400);
    text("de 21 se considera blackjack",160,420);
    
    textSize(30);
    fill(Color1);
    text("Hit",160,200);
    
    textSize(30);
    fill(Color2);
    text("Stand",480,200);
    
    
    if (mouseX > 320) {
      alpha2 = 220;
      alpha1 = 30;
      alphatext1 = 100;
      alphatext2 = 255;
      Color1 = color(250, 100, 50, alpha1);
      Color2 = color(50, 100, 250, alpha2);
    }
    else {
      alpha2 = 30;
      alpha1 = 220;
      alphatext1 = 255;
      alphatext2 = 100;
      Color2 = color(250, 100, 50, alpha2);
      Color1 = color(50, 100, 250, alpha1);
    }
    
    image(mouse, 290, -5);
    fill(255);
    textSize(15);
    textAlign(CENTER,CENTER);
    text("Move             Mouse", 322,20);
    
    if (frameCount/60 > 18) {
      pantalla = "pantalla5";
      reinicio = 0;
    }
    
  }
  
  
  else if (pantalla.equals("pantalla5")){
    
    if (frameCount != 0 && reinicio == 0){
      frameCount = 0;
      reinicio += 1;
    }
    
    image(imagen_6,-75,0);
    
    fill(0);
    textSize(45);
    textAlign(CENTER,CENTER);
    text("¡Bla", 140, 100);
    
    fill(255,0,0);
    text("CK", 240, 95);
    
    fill(0);
    text("Ja", 365, 100); 
    
    fill(255,0,0);
    text("CK!", 475, 95);
    
    fill(250, 0, 0);
    textSize(25);
    text("Black - Jack", 300, 20);
    
    if (frameCount/60 > 2 && frameCount/60 < 7){
      Color3 = color(255, 255);
      fill(0,190);
      rect (95, 155, 450, 60);
    }
    else if (frameCount/60 > 6 && frameCount/60 < 9){
      Color4 = color(255, 255);
      fill(0,190);
      rect (115, 225, 410, 30);
    }
    else if (frameCount/60 > 8 && frameCount/60 < 13){
      Color5 = color(255, 255);
      fill(0,190);
      rect (115, 260, 410, 60);
    }
    else if (frameCount/60 > 12 && frameCount/60 < 17){
      Color6 = color(255, 255);
      fill(0,190);
      rect (135, 315, 370, 30);
    }
    else if (frameCount/60 > 16 && frameCount/60 < 22){
      Color7 = color(255, 255);
      fill(0,190);
      rect (85, 370, 460, 60);
    }
    else {
      Color3 = color(255, 100);
      Color4 = color(255, 100);
      Color5 = color(255, 100);
      Color5 = color(255, 100);
      Color6 = color(255, 100);
      Color7 = color(255, 100);
    }
      
    fill(Color3);
    textSize(25);
    text("Cuando una persona realiza Black Jack", 320, 170);
    text("esta gana automáticamente", 320, 195);
    
    fill(Color4);
    text("Las maneras de hacer Black Jack son:", 320, 240);
    
    fill(Color5);
    text("-Sumar 21 en la primer mano con tus", 320, 275);
    text("2 cartas iniciales (A + K,Q,J).", 320, 300);
    fill(Color6);
    text("-Juntar 7 cartas sin pasarte de 21.", 320, 330);
    
    fill(Color7);
    textSize(23);
    text("En caso de que el crupier haga Black Jack", 320, 385);
    text("todos pierden aunque tu también hayas hecho. ", 320, 410);
    
    if (frameCount/60 > 21) {
      pantalla = "pantalla6";
      reinicio = 0;
    }
  }
  
  
  else if(pantalla.equals("pantalla6")){
    
    if (frameCount != 0 && reinicio == 0){
      frameCount = 0;
      reinicio += 1;
      alpha3 = 0;
      alpha4 = 0;
      alpha5 = 0;
    }
    
    image(imagen_7,-75,0);
    fill(255, alpha3);
    textSize(50);
    textAlign(CENTER,CENTER);
    text("¿Qué esperas para jugarlo?", 320, 210);
    
    textSize(40);
    fill(230, 200, 20, alpha4);
    text("¡Juega ya!", 320, 250);
    
    if (frameCount/60 > 0 && alpha3 < 255) {
      alpha3 += 2;
      println(frameCount/60);
    }
    
    if (frameCount/60 > 5 && alpha4 != 255) {
      alpha4 += 3;
    }
    
    if (frameCount/60 > 9) {
      alpha4 += 3;
    }
    
    if (frameCount/60> 9) {
      alpha5 +=3;
      fill (250, 170, 50, alpha5);
      strokeWeight(3);
      circle(centroX, centroY, diametro);
      distanciaMouseBoton = dist(mouseX, mouseY, centroX, centroY); 
      textSize(35);
      fill(0);
      text("R", 320, 400);
      textSize(20);
      fill(255);
      text("reiniciar",385, 400);
    }    
  }
}

void mousePressed() {
  if (distanciaMouseBoton < diametro/2 && frameCount/60 > 9) {
    frameCount = 0;
    reinicio += 1;
    pantalla = "pantalla1";
  }
}

void keyReleased(){
  if (key == 'd'){
    if (pantalla.equals("pantalla1")){
      pantalla = "pantalla2";
      tamaño = 1;
      opacidad = 0;
      frameCount = 0;
    }
    
    else if (pantalla.equals("pantalla2")){
      pantalla = "pantalla3";
      opacidad = 0;
      x1 = -300;
      x2 = 940;
      x3 = -300;
      x4 = 940;
      x5 = -300;
      x6 = 940;
      frameCount = 0;
    }
    
    else if (pantalla.equals("pantalla3")){
      pantalla = "pantalla4";
      alpha1 = 0;
      alpha2 = 0;
      frameCount = 0;
    }
    
    else if (pantalla.equals("pantalla4")){
      pantalla = "pantalla5";
      Color3 = color(255, 100);
      Color4 = color(200, 100);
      Color5 = color(200, 100);
      Color6 = color(200, 100);
      Color7 = color(200, 100);
      frameCount = 0;
    }
    
    else if (pantalla.equals("pantalla5")){
      pantalla = "pantalla6";
      frameCount = 0;
    }
  }
  
  if (key == 'a'){
    if (pantalla.equals("pantalla2")){
      pantalla = "pantalla1";
      biggersmaller = 1;
      R = 255;
      G = 0;
      B = 0;
      size = 36;
      frameCount = 0;
    }
    
    else if (pantalla.equals("pantalla3")){
      pantalla = "pantalla2";
      tamaño = 1;
      opacidad = 0;
      frameCount = 0;
    }
    
    else if (pantalla.equals("pantalla4")){
      pantalla = "pantalla3";
      opacidad = 0;
      x1 = -300;
      x2 = 940;
      x3 = -300;
      x4 = 940;
      x5 = -300;
      x6 = 940;
      frameCount = 0;
    }
    
    else if (pantalla.equals("pantalla5")){
      pantalla = "pantalla4";
      alpha1 = 0;
      alpha2 = 0;
      frameCount = 0;
    
    }
    
    else if (pantalla.equals("pantalla6")){
      pantalla = "pantalla5";
      Color3 = color(255, 100);
      Color4 = color(200, 100);
      Color5 = color(200, 100);
      Color6 = color(200, 100);
      Color7 = color(200, 100);
      frameCount = 0;
    }
  }
}
  

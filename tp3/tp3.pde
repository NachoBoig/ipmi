//link video explicativo: https://youtu.be/2s0I8W2dc7k

int centroX = 200;
int centroY = 200;
float diametro = 370;
float distanciaMouseBoton;

float tam = 3;

float tempx = (centroX - (diametro/2));
float tempy = (centroY - (diametro/2));

int img = 0;

color colorRandom = color(255, 255, 255);

PImage OPart;
PImage OPartOriginal;

void setup() {
  size(800, 400);
  OPart = loadImage("OpART.png");
  OPartOriginal = loadImage("OpARToriginal.jpg");
}

void draw() {
  //DEBUG
  if (tam == 0){
    tam=2;
  }
  
  background(255);
  
  if (img == 0){
    image(OPart,0,0);
  }
  else {
    image(OPartOriginal,0,0);
  }
  
  //GRILLA 1
  for(int x = 0; x < width/tam ; x+=1){
    for (int y = 0; y < height/tam; y+=1){
      fill(0);
      ellipse (x*tam*2 +400, y*tam*2, tam, tam);
    }   
  }
  fill(30);
  noStroke();
  circle(centroX+400, centroY, diametro); 
  
  
  //GRILLA 2
  for (float x=0 ; x < 400; x+=2){
    for (float y=0 ; y < 400; y+=2){
      
      if (dist(( tempx + x*tam), (tempy + y*tam), centroX, centroY)<diametro/2){
        fill (colorRandom);
        
        float distancia = dist(centroX, centroY, (tempx + x*tam), 200);
        float distancia2 = dist(centroX, centroY-30, 200, (tempy + y*tam));
        
        
        //SE INVIERTE LA ESCALA
        float ancho = map(distancia, 0, 200, 60, 0);
        float alto = map(distancia2, 0, 200, 60, 0);
        ellipse ((tempx + x*tam-tam/2)+400, (tempy + (y*tam)-tam/2), ancho/7, alto/9);
        } 
      } 
    }
    fill(0, 210, 180);
    rect(725, 350, 45, 30);
  }
  
void cambiarcolor() {
  colorRandom = color(random(100, 255), random(100, 255), random(100, 255));  
}

float cambiarPx() { 
  centroX = mouseX-400;
  return centroX;
}

float cambiarPy() { 
  centroY = mouseY;
  return centroY;
}

float cambiarDiametro() { 
  diametro = dist(mouseX, mouseY, centroX, centroY);
  return diametro;
}

void botonReiANDcmabioDeColor(){
  if (725 < mouseX && mouseX < 770){
    if (350 < mouseY && mouseY < 380){
      tam = 3;
      colorRandom = color(255, 255, 255);
      diametro = 370;
      centroX = 200;
      centroY = 200;
    }
  }
  
  else {
    cambiarcolor(); 
  }
}

void mousePressed() {
  if (mouseX > 400){
    botonReiANDcmabioDeColor();
  }
  else {
    if (img == 0){
      img = 1;
    }
    else {
      img = 0;
    }
  }
}

void keyPressed() {
  if (key == 'r'){
    tam = 3;
    colorRandom = color(255, 255, 255);
    diametro = 370;
    centroX = 200;
    centroY = 200;
  }
  else if (key == 'x'){
    cambiarPx();
  }
  else if (key == 'y'){
    cambiarPy();
  }
  else if (key == 'd'){
    cambiarDiametro();
  }
  else {
    tam = random(0,20);
  }
}

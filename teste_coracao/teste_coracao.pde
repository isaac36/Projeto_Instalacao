import processing.svg.*;
PShape heartSVG;
void setup() {
  size(800, 300);
  frameRate(30);
  smooth();
  
  // Carregar o arquivo SVG
  heartSVG = loadShape("heart.svg");
}

void draw() {
  background(255);
  
  // Calcular as coordenadas de desenho do coração centralizado
  float x = width / 2;
  float y = height / 2;
  
  // Definir o tamanho do coração baseado em uma função seno
  float scaleFactor = map(sin(angle), -1, 1, 0.5, 1.5);
  
  // Escalar o tamanho do coração
  float scaledWidth = heartSVG.width * scaleFactor;
  float scaledHeight = heartSVG.height * scaleFactor;
  
  // Calcular as coordenadas para centralizar o coração
  float heartX = x - scaledWidth / 2;
  float heartY = y - scaledHeight / 2;
  
  // Desenhar o coração com o tamanho e posição atualizados
  shape(heartSVG, heartX, heartY, scaledWidth, scaledHeight);
  
  // Atualizar o ângulo para o próximo quadro
  angle += 0.1;
}

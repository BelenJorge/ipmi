
PImage diapos1;
PImage diapos2;
PFont texto;
PFont texto2;
int y = 50;
int v = 2;

void setup() {
  size(640, 480);
  diapos1 = loadImage ("portada.jpeg");
  diapos2 = loadImage ("empresas.jpg");
  texto = loadFont ("Verdana-40.vlw");
  texto2 = loadFont ("Verdana-30.vlw");
  textFont(texto);
  textAlign(CENTER);
}

void draw () {
  image(diapos1, 0, 0);
  fill(0);
  text("The Last of Us es una\nfranquicia de juegos de\nacción, aventuras y\nsurvival horror.", 480-frameCount, 250);

  println(frameCount);

  if (frameCount >700) {
    image(diapos2, 0, 0);
   
   textFont(texto2);
   text("Fue creada por:\nNaughty Dog y\nSony Interactive Entertainment.",250, 200);
 
  }
}

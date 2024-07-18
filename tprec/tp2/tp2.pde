PImage diapos1, diapos2, diapos3, diapos4;
PFont font1, font2, font3;
String par1, par2, par3, par4;
boolean boton;
int y = 50;
int v = 2;

void setup() {
  size(640, 480);
  diapos1 = loadImage ("portada.png");
  diapos2 = loadImage ("empresas.jpg");
  diapos3 = loadImage ("escenario.jpg");
  diapos4 = loadImage ("reinicio.png");
  font1 = loadFont ("Verdana1.vlw");
  font3 = loadFont ("Verdana3.vlw");
  font2 = loadFont ("Verdana2.vlw");

  par1 =  "The Last of Us es una\nfranquicia de juegos de\nacción, aventuras y\nsurvival horror.";
  par2 =  "Fue creada por:\nNaughty Dog y\nSony Interactive Entertainment.";
  par3 =  "La serie está ambientada en\nunos Estados Unidos postapocalípticos\nasolados por criaturas caníbales\ninfectadas por un hongo\nmutado del género Cordyceps.";
  par4 = "REINICIAR";

  
}

void draw () {
  boton = (mouseX > 260 && mouseX < 260 + 150 && mouseY > 240 && mouseY < 240 + 50);
  println(frameCount);
  
  //pantalla 1
  image(diapos1, 0, 0);
  fill(0);
  textFont (font3);
  textAlign (CENTER);
  text (par1, 480-frameCount, 250);

//pantalla 2
  if (frameCount >700) {
    image(diapos2, 0, 0);
    int font2x = 50 + (frameCount - 700);
    int font2y = 200;
    textFont(font2);
    text (par2, font2x, font2y);
  }

//pantalla 3
  if (frameCount >1550) {
    image(diapos3, 0, 0);
    fill(255);
    int font2x = 325;
    int font2y = 480 - (frameCount - 1550);
    text (par3, font2x, font2y);
  }

//pantalla de reinicio
  if (frameCount > 2110) {
    image(diapos4, 0, 0);
    fill(0);
    textFont (font3);
    textAlign (CENTER);
    text (par4, 330, 120);
    fill (110, 60, 40);
    rect (260, 240, 150, 50);
    fill(0);
    textFont (font1);
    textAlign (LEFT);
    text("CLICK AQUÍ", 268, 275);
  }
}
//boton de reinicio
void mouseClicked () {
  if (boton) {
    frameCount = 0;
  }
}

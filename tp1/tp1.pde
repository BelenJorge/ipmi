PImage paisaje;        //Belén Aixa Jorge
                       //Comisión 2
                       //Legajo 81689/3
                       
void setup () {
  size (800, 400);
  background (210, 230, 240);
  paisaje = loadImage ("lago.jpg");
}

void draw () {
  
  image(paisaje, 0, 0);

  //montaña grande
  noStroke();
  fill(30, 140, 145);
  triangle(400+195, 72, 400+195, 285, 400+580, 285);
  ellipse(400+355, 175, 95, 70);
  fill(195, 195, 200);
  rect(400, 0, 30, 88);
  triangle(400+30, 0, 400+30, 285, 400+600, 285);
  fill(210, 230, 240);
  ellipse (725, 130, 42, 35);

  //montaña dere
  fill(170, 150, 80);
  ellipse(400+410, 270, 125, 120);

  //"pasto"
  ellipse(400+280, 280, 160, 30);

  //montaña izq
  fill(30, 115, 130);
  triangle(400, 155, 400+220, 285, 400, 285);
  quad(400, 58, 400+17, 62, 400+96, 220, 400, 220);

  //lago
  fill(60, 100, 100);
  rect(400, 285, 400, 120);

  //puente
  fill (130, 130, 130);
  quad(400+140, 352, 400+275, 352, 400+310, 400, 500, 400);
  stroke(100, 80, 80);
  line(540, 360, 670, 360);
  line(530, 370, 680, 370);
  line(520, 380, 690, 380);
  line(510, 390, 700, 390);

  //hombre
  noStroke();
  fill(0);
  triangle(400+184, 360, 400+235, 360, 400+210, 300);
  rect(400+186, 284, 46, 50);
  triangle(400+192, 300, 400+210, 262, 400+228, 300);
  ellipse(400+210, 268, 23, 23);
  
}

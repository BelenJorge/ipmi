PImage ref;

void setup() {
  size (800, 400);
  ref = loadImage ("F_9.jpg");
}

void draw() {
  image (ref, 0, 0);
}

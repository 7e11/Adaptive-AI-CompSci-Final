import game2dai.entities.*;
import game2dai.entityshapes.ps.*;
import game2dai.maths.*;
import game2dai.*;
import game2dai.entityshapes.*;
import game2dai.fsm.*;
import game2dai.steering.*;
import game2dai.utils.*;
import game2dai.graph.*;

World world;
Vector2D[] contour;
Building[] bs;
BuildingPic bpic;
StopWatch sw = new StopWatch();


public void setup() {
  size(616,682);
  world = new World(616,682);
  bs = Building.makeFromXML(this, "building.xml");
  bpic = new BuildingPic(this, color(255,255,200), color(160,160,0),2);
  
  for (Building b : bs) {
      b.renderer(bpic);
      world.add(b);
  }
}
public void draw() {
  double elapsedTime = sw.getElapsedTime();
  world.update(elapsedTime);
  background(200);
  world.draw(elapsedTime);
}
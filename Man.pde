public class Man extends Vehicle {

  boolean alive = true;
  public Man(Vector2D position, double radius, Vector2D velocity, 
  double mSpeed, Vector2D heading, double mass, 
  double mTurnRate, double mForce) {
    super(position, radius, velocity, mSpeed, heading, mass, mTurnRate, mForce); //Invoking Vehicle (Superclass) constructor
    addFSM(); //Force State management program.
  }
}


//http://www.lagers.org.uk/ai4g/pguides/pg14-cat-code.html
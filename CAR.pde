 class CAR{
   PVector velocity;
   PVector location;
   PVector acceleration;
   int topspeed=3;
   
   //constructor
   CAR(){
     location= new PVector(width/2,2);
     velocity= new PVector(0,0);
     acceleration= new PVector(0,.5);
   }
   
   //method
   void display() {
    fill(random(255),random(255),random(255));
    ellipse(location.x, location.y, 50, 50);
  }
   
 void update(float y) {

    PVector mouse = new PVector(mouseX,mouseY);
    // Step 1: Compute direction
    PVector dir = PVector.sub(mouse,location);

    // Step 2: Normalize
    dir.normalize();
   
    // Step 3: Scale
    dir.mult((1/mouse.dist(location))*y);
    // Step 4: Accelerate
    acceleration = dir;
    
    velocity.add(acceleration);
    velocity.limit(topspeed);
    location.add(velocity);
    
  }
  
 }
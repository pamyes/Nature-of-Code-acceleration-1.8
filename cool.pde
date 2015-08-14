
 CAR[] balls=new CAR[5];
 void setup(){
   size(600,600);
   
   for(int i=0;i<5;i++){
     balls[i]=new CAR();
   }   
 }
 
 void draw(){
  background(0);
   for(int i=0;i<5;i++){
     float y=random(50);
      balls[i].display();
      balls[i].update(y);
   } 

}
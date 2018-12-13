class Scene{
     FadingLine[] cur;
     int t;
     int que;
  Scene(FadingLine[] current,int q){
    cur = current;
    t = 0;
    que = q;
  }
  
  void display(){
      cur[0].display();
      cur[0].update();
      if(t> que){
          cur[1].display();
          cur[1].update();
      }
  }
  
  void update(){
     t++; 
  }
}

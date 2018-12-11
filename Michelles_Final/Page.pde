class Page{
  FadingLine[] letSee = new FadingLine[2];
  int timer;
  Scene aScene;
    Page(String line1, String line2, int x, int y, int x2, int y2, int t){
        letSee[0] = new FadingLine(x,y,line1);
        letSee[1] = new FadingLine(x2,y2,line2);
        timer = t;
        aScene = new Scene(letSee,t);
    }
    
    void display(){
        aScene.display();
        aScene.update();
    }
}

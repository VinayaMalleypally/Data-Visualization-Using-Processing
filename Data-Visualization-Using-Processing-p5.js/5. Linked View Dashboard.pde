String S;
int counter=0;
Table table;
int j=0;
void setup() {
  size(1200, 800); 
  background(255); 
  selectInput("Select a file to process:", "fileSelected");
}

void fileSelected(File selection) {
  if (selection == null) { 
    println("No File Selected!");
  }
  else {
    S = selection.getAbsolutePath();      
    table = loadTable(S,"header");  
    println("The selected File by you is: " + S);              
  }
}
void draw(){
  background(255);
   textSize(22);
  stroke(0,0,0);
  strokeWeight(5);
  fill(0, 102, 153);
  text("press key 'Enter'",300,15);
  text("press key 'Enter'",650,15);
strokeWeight(2);
  line(30,370,350,370);
  line(30,370,30,30);
  line(430,370,750,370);
  line(430,370,430,30);
  line(830,370,1170,370);
  line(830,370,830,30);
  ellipse(30,30,2,2);
  ellipse(30,115,2,2);
  ellipse(30,200,2,2);
  ellipse(30,285,2,2);
  ellipse(30,360,2,2);
  ellipse(430,30,2,2);
  ellipse(430,115,2,2);
  ellipse(430,200,2,2);
  ellipse(430,285,2,2);
  ellipse(430,360,2,2);
  ellipse(830,30,2,2);
  ellipse(830,115,2,2);
  ellipse(830,200,2,2);
  ellipse(830,285,2,2);
  ellipse(830,360,2,2);
 
  line(0,400,1200,400);
  line(400,23,400,400);
  line(800,23,800,400);
  line(600,400,600,800);
  line(50,450,450,450);
  line(50,520,450,520);
  line(50,590,450,590);
  line(50,660,450,660);
  line(50,730,450,730);
  line(50,450,50,730);
  line(150,450,150,730);
  line(250,450,250,730);
  line(350,450,350,730);
  line(450,450,450,730);
  strokeWeight(2);
  fill(0,0,0);
  text("SATM",470,485);
  text("SATV",470,555);
  text("ACT",470,625);
  text("GPA",470,695);
  text("SATM",70,485);
  text("SATV",170,555);
  text("ACT",270,625);
  text("GPA",370,695);
  text("SATM",70,765);
  text("SATV",170,765);
  text("ACT",270,765);
  text("GPA",370,765);
  
  text("SATM",650,540);
  text("SATV",820,540);
  text("ACT",970,540);
  text("GPA",1120,540);
  
  if(table != null)
  for(int i=0; i<table.getRowCount()-1; i++) 
    {
      stroke(255,255,0);
      TableRow data = table.getRow(i);
      TableRow next_data = table.getRow(i+1);
      
      line(650,(data.getInt(0)/2.5)+400,820,(data.getInt(1)/3)+450);
      line(820,(data.getInt(1)/3)+450,970,(data.getFloat(2)*8.8)+410);
      line(970,(data.getFloat(2)*8.8)+410,1120,(data.getFloat(3)*77)+410);
      if((int)dist(650,(data.getInt(0)/2.5)+400,mouseX,mouseY)+(int)(dist(mouseX,mouseY,820,(data.getInt(1)/3)+450))==(int)dist(650,(data.getInt(0)/2.5)+400,820,(data.getInt(1)/3)+450)||
      (int)dist(820,(data.getInt(1)/3)+450,mouseX,mouseY)+(int)(dist(mouseX,mouseY,970,(data.getFloat(2)*8.8)+410))==(int)dist(820,(data.getInt(1)/3)+450,970,(data.getFloat(2)*8.8)+410)||
      (int)dist(970,(data.getFloat(2)*8.8)+410,mouseX,mouseY)+(int)(dist(mouseX,mouseY,1120,(data.getFloat(3)*77)+410))==(int)dist(970,(data.getFloat(2)*8.8)+410,1120,(data.getFloat(3)*77)+410))
      {
       stroke(0,0,0); 
      line(650,(data.getInt(0)/2.5)+400,820,(data.getInt(1)/3)+450);
      line(820,(data.getInt(1)/3)+450,970,(data.getFloat(2)*8.8)+410);
      line(970,(data.getFloat(2)*8.8)+410,1120,(data.getFloat(3)*77)+410);
      }
      point((data.getInt(0)*0.19)+90,(data.getInt(1)*0.118)+417);
      if(dist(mouseX,mouseY,(data.getInt(0)*0.19)+90,(data.getInt(1)*0.118)+417)<5)
      {stroke(0,0,0);
      point((data.getInt(0)*0.19)+90,(data.getInt(1)*0.118)+417);}
      point((data.getInt(0)*0.19)+190,(data.getFloat(2)*2.8)+415);
      if(dist(mouseX,mouseY,(data.getInt(0)*0.19)+190,(data.getFloat(2)*2.8)+415)<5)
      {stroke(0,0,0);
       point((data.getInt(0)*0.19)+190,(data.getFloat(2)*2.8)+415);}
      point((data.getInt(0)*0.19)+290,(data.getFloat(3)*26)+410);
      if(dist(mouseX,mouseY,(data.getInt(0)*0.19)+290,(data.getFloat(3)*26)+410)<5)
      {stroke(0,0,0);
       point((data.getInt(0)*0.19)+290,(data.getFloat(3)*26)+410);}
      point((data.getInt(1)*0.15)+20,(data.getInt(0)*0.13)+477);
       if(dist(mouseX,mouseY,(data.getInt(1)*0.15)+20,(data.getInt(0)*0.13)+477)<5)
      {stroke(0,0,0);
       point((data.getInt(1)*0.15)+20,(data.getInt(0)*0.13)+477);}
      point((data.getInt(1)*0.15)+220,(data.getFloat(2)*2.8)+485);
       if(dist(mouseX,mouseY,(data.getInt(1)*0.15)+220,(data.getFloat(2)*2.8)+485)<5)
      {stroke(0,0,0);
      point((data.getInt(1)*0.15)+220,(data.getFloat(2)*2.8)+485);}
      point((data.getInt(1)*0.15)+320,(data.getFloat(3)*26)+480);
       if(dist(mouseX,mouseY,(data.getInt(1)*0.15)+320,(data.getFloat(3)*26)+480)<5)
      {stroke(0,0,0);
      point((data.getInt(1)*0.15)+320,(data.getFloat(3)*26)+480);}
      point((data.getFloat(2)*4),(data.getInt(0)*0.13)+547);
       if(dist(mouseX,mouseY,(data.getFloat(2)*4),(data.getInt(0)*0.13)+547)<5)
      {stroke(0,0,0);
       point((data.getFloat(2)*4),(data.getInt(0)*0.13)+547);}
      point((data.getFloat(2)*4)+100,(data.getInt(1)*0.118)+557);
       if(dist(mouseX,mouseY,(data.getFloat(2)*4)+100,(data.getInt(1)*0.118)+557)<5)
      {stroke(0,0,0);
       point((data.getFloat(2)*4)+100,(data.getInt(1)*0.118)+557);}
      point((data.getFloat(2)*4)+300,(data.getFloat(3)*26)+550);
       if(dist(mouseX,mouseY,(data.getFloat(2)*4)+300,(data.getFloat(3)*26)+550)<5)
      {stroke(0,0,0);
       point((data.getFloat(2)*4)+300,(data.getFloat(3)*26)+550);}
      point((data.getFloat(3)*35),(data.getInt(0)*0.13)+617);
       if(dist(mouseX,mouseY,(data.getFloat(3)*35),(data.getInt(0)*0.13)+617)<5)
      {stroke(0,0,0);
       point((data.getFloat(3)*35),(data.getInt(0)*0.13)+617);}
      point((data.getFloat(3)*35)+100,(data.getInt(1)*0.118)+627);
       if(dist(mouseX,mouseY,(data.getFloat(3)*35)+100,(data.getInt(1)*0.118)+627)<5)
      {stroke(0,0,0);
       point((data.getFloat(3)*35)+100,(data.getInt(1)*0.118)+627);}
      point((data.getFloat(3)*35)+200,(data.getFloat(2)*2.8)+625);
       if(dist(mouseX,mouseY,(data.getFloat(3)*35)+200,(data.getFloat(2)*2.8)+625)<5)
      {stroke(0,0,0);
     point((data.getFloat(3)*35)+200,(data.getFloat(2)*2.8)+625);}
    if(keyCode== ENTER){ 
    if(j%4==1){
    text("SATM",150,20);
    rect(40+i,360,2,-data.getInt(0)*0.4);
    if(mouseX>40+i && mouseX<40+i+2 && mouseY>data.getInt(0)*0.4-360 && mouseY<360){
    stroke(0,0,0);
    rect(40+i,360,2,-data.getInt(0)*0.4);
    }}
    if(j%4==2){
    text("SATV",150,20);
    rect(40+i,360,2,-data.getInt(1)*0.4);
    if(mouseX>40+i && mouseX<40+i+2 && mouseY<360 && mouseY>data.getInt(1)*0.4-360){
    stroke(0,0,0);
    rect(40+i,360,2,-data.getInt(1)*0.4);
    }}
    if(j%4==3){
    text("ACT",150,20);
    rect(40+i,360,2,-data.getFloat(2)*9);
    if(mouseX>40+i && mouseX<40+i+2 && mouseY>data.getFloat(2)*9-360 && mouseY<360){
    stroke(0,0,0);
    rect(40+i,360,2,-data.getFloat(2)*9);
    }}
    if(j%4==0){
    text("GPA",150,20);
    rect(40+i,360,2,-data.getFloat(3)*80);
    if(mouseX>40+i && mouseX<40+i+2 && mouseY>data.getFloat(3)*80-360 && mouseY<360){
        stroke(0,0,0);
        rect(40+i,360,2,-data.getFloat(3)*80);
        }
    }
   if(j%4==1){
    text("SATM",550,20);
    line(450+i,data.getInt(0)*0.4,450+i,next_data.getInt(0)*0.4);
    if(dist(mouseX,mouseY,450+i,data.getInt(0)*0.4)<5)
    {
      stroke(0,0,0);
      line(450+i,data.getInt(0)*0.4,450+i,next_data.getInt(0)*0.4);
    }}
    if(j%4==2){
    text("SATV",550,20);
    line(450+i,data.getInt(1)*0.4,450+i,next_data.getInt(1)*0.4);
        if(dist(mouseX,mouseY,450+i,data.getInt(1)*0.4)<5)
    {
      stroke(0,0,0);
      line(450+i,data.getInt(1)*0.4,450+i,next_data.getInt(1)*0.4);
    }
    }
    if(j%4==3){
    text("ACT",550,20);
    line(450+i,data.getFloat(2)*10,450+i,next_data.getFloat(2)*10);
    if(dist(mouseX,mouseY,450+i,data.getInt(2)*10)<5)
    {
      stroke(0,0,0);
      line(450+i,data.getFloat(2)*10,450+i,next_data.getFloat(2)*10);
    }
    }
    if(j%4==0){
    text("GPA",550,20);
    line(450+i,(data.getFloat(3)*100)-80,450+i,(next_data.getFloat(3)*100)-80);
    if(dist(mouseX,mouseY,450+i,(data.getInt(3)*100-80))<10)
    {
      stroke(0,0,0);
      line(450+i,(data.getFloat(3)*100)-80,450+i,(next_data.getFloat(3)*100)-80);
    }
    }
  

  if(j%4==1){
    text("SATM-SATV",900,20);
    point((data.getInt(0)*0.5)+700,(data.getInt(1)*0.5)-50);
    if(dist(mouseX,mouseY,(data.getInt(0)*0.5)+700,(data.getInt(1)*0.5)-50)<5){
      stroke(0,0,0);
      point((data.getInt(0)*0.5)+700,(data.getInt(1)*0.5)-50);
    }}
    if(j%4==2){
    text("SATV-ACT",900,20);
    point((data.getInt(1)*0.5)+750,(data.getFloat(2)*13)-100);
    if(dist(mouseX,mouseY,(data.getInt(1)*0.5)+750,(data.getFloat(2)*13)-100)<5){
      stroke(0,0,0);
      point((data.getInt(1)*0.5)+750,(data.getFloat(2)*13)-100);
    }}
    if(j%4==3){
    text("ACT-GPA",900,20);
    point((data.getFloat(2)*13)+670,(data.getFloat(3)*100)-50);
    if(dist(mouseX,mouseY,(data.getFloat(2)*13)+670,(data.getFloat(3)*100)-50)<5){
      stroke(0,0,0);
      point((data.getFloat(2)*13)+670,(data.getFloat(3)*100)-50);
    }}
    if(j%4==0){
    text("GPA-SATM",900,20);
    point((data.getFloat(3)*120)+650,(data.getInt(0)*0.5)-70);
    if(dist(mouseX,mouseY,(data.getFloat(3)*120)+650,(data.getInt(0)*0.5)-70)<5){
      stroke(0,0,0);
      point((data.getFloat(3)*120)+650,(data.getInt(0)*0.5)-70);
    }}
   
}
}}
void keyPressed()
{
  j++;counter++;
  
}

       
     
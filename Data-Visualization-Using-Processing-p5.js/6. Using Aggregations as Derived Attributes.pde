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
  background(215,225,235);
   textSize(20);
  stroke(5, 46, 112);
  strokeWeight(2);
  text("press key enter",500,10);
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
  ellipse(830,370,2,2);
  ellipse(830,290,2,2);
  ellipse(830,200,2,2);
  ellipse(830,120,2,2);
  ellipse(830,30,2,2);
  
  line(0,400,1200,400);
  line(400,0,400,400);
  line(800,0,800,400);
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
   text("0",805,380);
   text("40",805,290);
   text("80",805,200);
   text("120",805,120);
   text("160",805,30);
   text("number of students",1000,45);
   text("X-axis =",930,20);
   text("Y-axis=",930,45);
   text("Histogram",950,60);
  
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
      TableRow data = table.getRow(i);
      TableRow next_data = table.getRow(i+1);
      
      /*line(650,(data.getInt(0)/2.5)+400,820,(data.getInt(1)/3)+450);
      line(820,(data.getInt(1)/3)+450,970,(data.getFloat(2)*8.8)+410);
      line(970,(data.getFloat(2)*8.8)+410,1120,(data.getFloat(3)*77)+410);
      if((int)dist(650,(data.getInt(0)/2.5)+400,mouseX,mouseY)+(int)(dist(mouseX,mouseY,820,(data.getInt(1)/3)+450))==(int)dist(650,(data.getInt(0)/2.5)+400,820,(data.getInt(1)/3)+450)||
      (int)dist(820,(data.getInt(1)/3)+450,mouseX,mouseY)+(int)(dist(mouseX,mouseY,970,(data.getFloat(2)*8.8)+410))==(int)dist(820,(data.getInt(1)/3)+450,970,(data.getFloat(2)*8.8)+410)||
      (int)dist(970,(data.getFloat(2)*8.8)+410,mouseX,mouseY)+(int)(dist(mouseX,mouseY,1120,(data.getFloat(3)*77)+410))==(int)dist(970,(data.getFloat(2)*8.8)+410,1120,(data.getFloat(3)*77)+410))
      {
       stroke(224,244,156); 
      line(650,(data.getInt(0)/2.5)+400,820,(data.getInt(1)/3)+450);
      line(820,(data.getInt(1)/3)+450,970,(data.getFloat(2)*8.8)+410);
      line(970,(data.getFloat(2)*8.8)+410,1120,(data.getFloat(3)*77)+410);
      }*/
      fill(255*0.601,0,0);
      rect(650,450,75,75);
      stroke(0);
      fill(0);
      text(0.601,665,500);
      fill(255*0.164,0,0);
      rect(725,525,75,75);
      stroke(0);
      fill(0);
      text(0.164,740,500);
      fill(255*1,0,0);
      rect(800,600,75,75);
      stroke(0);
      fill(0);
      text(1,815,500);
      fill(255*0.810,0,0);
      rect(875,675,75,75);
      stroke(0);
      fill(0);
      text(0.810,890,500);
      fill(255*0.747,0,0);
      rect(950,750,75,75);
      stroke(0);
      fill(0);
      text(0.747,965,500);
      
      stroke(0);
      fill(0);
      text(0.601,1040,500);
      fill(255*0.601,0,0);
      rect(650,450,75,75);
      stroke(0);
      fill(0);
      text(0.601,1115,500);
      fill(255*0.601,0,0);
      rect(650,450,75,75);
      stroke(0);
      fill(0);
      text(0.601,1190,500);
      fill(255*0.601,0,0);
      rect(650,450,75,75);
      stroke(0);
      fill(0);
      text(0.601,665,500);
      point((data.getInt(0)*0.19)+90,(data.getInt(1)*0.118)+417);
      if(dist(mouseX,mouseY,(data.getInt(0)*0.19)+90,(data.getInt(1)*0.118)+417)<5)
      {stroke(224,244,156);
      point((data.getInt(0)*0.19)+90,(data.getInt(1)*0.118)+417);}
      point((data.getInt(0)*0.19)+190,(data.getFloat(2)*2.8)+415);
      if(dist(mouseX,mouseY,(data.getInt(0)*0.19)+190,(data.getFloat(2)*2.8)+415)<5)
      {stroke(224,244,156);
       point((data.getInt(0)*0.19)+190,(data.getFloat(2)*2.8)+415);}
      point((data.getInt(0)*0.19)+290,(data.getFloat(3)*26)+410);
      if(dist(mouseX,mouseY,(data.getInt(0)*0.19)+290,(data.getFloat(3)*26)+410)<5)
      {stroke(224,244,156);
       point((data.getInt(0)*0.19)+290,(data.getFloat(3)*26)+410);}
      point((data.getInt(1)*0.15)+20,(data.getInt(0)*0.13)+477);
       if(dist(mouseX,mouseY,(data.getInt(1)*0.15)+20,(data.getInt(0)*0.13)+477)<5)
      {stroke(224,244,156);
       point((data.getInt(1)*0.15)+20,(data.getInt(0)*0.13)+477);}
      point((data.getInt(1)*0.15)+220,(data.getFloat(2)*2.8)+485);
       if(dist(mouseX,mouseY,(data.getInt(1)*0.15)+220,(data.getFloat(2)*2.8)+485)<5)
      {stroke(224,244,156);
      point((data.getInt(1)*0.15)+220,(data.getFloat(2)*2.8)+485);}
      point((data.getInt(1)*0.15)+320,(data.getFloat(3)*26)+480);
       if(dist(mouseX,mouseY,(data.getInt(1)*0.15)+320,(data.getFloat(3)*26)+480)<5)
      {stroke(224,244,156);
      point((data.getInt(1)*0.15)+320,(data.getFloat(3)*26)+480);}
      point((data.getFloat(2)*4),(data.getInt(0)*0.13)+547);
       if(dist(mouseX,mouseY,(data.getFloat(2)*4),(data.getInt(0)*0.13)+547)<5)
      {stroke(224,244,156);
       point((data.getFloat(2)*4),(data.getInt(0)*0.13)+547);}
      point((data.getFloat(2)*4)+100,(data.getInt(1)*0.118)+557);
       if(dist(mouseX,mouseY,(data.getFloat(2)*4)+100,(data.getInt(1)*0.118)+557)<5)
      {stroke(224,244,156);
       point((data.getFloat(2)*4)+100,(data.getInt(1)*0.118)+557);}
      point((data.getFloat(2)*4)+300,(data.getFloat(3)*26)+550);
       if(dist(mouseX,mouseY,(data.getFloat(2)*4)+300,(data.getFloat(3)*26)+550)<5)
      {stroke(224,244,156);
       point((data.getFloat(2)*4)+300,(data.getFloat(3)*26)+550);}
      point((data.getFloat(3)*35),(data.getInt(0)*0.13)+617);
       if(dist(mouseX,mouseY,(data.getFloat(3)*35),(data.getInt(0)*0.13)+617)<5)
      {stroke(224,244,156);
       point((data.getFloat(3)*35),(data.getInt(0)*0.13)+617);}
      point((data.getFloat(3)*35)+100,(data.getInt(1)*0.118)+627);
       if(dist(mouseX,mouseY,(data.getFloat(3)*35)+100,(data.getInt(1)*0.118)+627)<5)
      {stroke(224,244,156);
       point((data.getFloat(3)*35)+100,(data.getInt(1)*0.118)+627);}
      point((data.getFloat(3)*35)+200,(data.getFloat(2)*2.8)+625);
       if(dist(mouseX,mouseY,(data.getFloat(3)*35)+200,(data.getFloat(2)*2.8)+625)<5)
      {stroke(224,244,156);
     point((data.getFloat(3)*35)+200,(data.getFloat(2)*2.8)+625);}
    if(keyCode== ENTER){ 
    if(j%4==1){
    text("SATM",150,20);
    rect(40+i,360,2,-data.getInt(0)*0.4);
    if(mouseX>40+i && mouseX<40+i+2 && mouseY>data.getInt(0)*0.4-360 && mouseY<360){
    stroke(224,244,156);
    rect(40+i,360,2,-data.getInt(0)*0.4);
    }}
    if(j%4==2){
    text("SATV",150,20);
    rect(40+i,360,2,-data.getInt(1)*0.4);
    if(mouseX>40+i && mouseX<40+i+2 && mouseY<360 && mouseY>data.getInt(1)*0.4-360){
    stroke(224,244,156);
    rect(40+i,360,2,-data.getInt(1)*0.4);
    }}
    if(j%4==3){
    text("ACT",150,20);
    rect(40+i,360,2,-data.getFloat(2)*9);
    if(mouseX>40+i && mouseX<40+i+2 && mouseY>data.getFloat(2)*9-360 && mouseY<360){
    stroke(224,244,156);
    rect(40+i,360,2,-data.getFloat(2)*9);
    }}
    if(j%4==0){
    text("GPA",150,20);
    rect(40+i,360,2,-data.getFloat(3)*80);
    if(mouseX>40+i && mouseX<40+i+2 && mouseY>data.getFloat(3)*80-360 && mouseY<360){
        stroke(224,244,156);
        rect(40+i,360,2,-data.getFloat(3)*80);
        }
    }
   if(j%4==1){
    text("SATM",550,20);
    line(450+i,data.getInt(0)*0.4,450+i,next_data.getInt(0)*0.4);
    if(dist(mouseX,mouseY,450+i,data.getInt(0)*0.4)<5)
    {
      stroke(224,244,156);
      line(450+i,data.getInt(0)*0.4,450+i,next_data.getInt(0)*0.4);
    }}
    if(j%4==2){
    text("SATV",550,20);
    line(450+i,data.getInt(1)*0.4,450+i,next_data.getInt(1)*0.4);
        if(dist(mouseX,mouseY,450+i,data.getInt(1)*0.4)<5)
    {
      stroke(224,244,156);
      line(450+i,data.getInt(1)*0.4,450+i,next_data.getInt(1)*0.4);
    }
    }
    if(j%4==3){
    text("ACT",550,20);
    line(450+i,data.getFloat(2)*10,450+i,next_data.getFloat(2)*10);
    if(dist(mouseX,mouseY,450+i,data.getInt(2)*10)<5)
    {
      stroke(224,244,156);
      line(450+i,data.getFloat(2)*10,450+i,next_data.getFloat(2)*10);
    }
    }
    if(j%4==0){
    text("GPA",550,20);
    line(450+i,(data.getFloat(3)*100)-80,450+i,(next_data.getFloat(3)*100)-80);
    if(dist(mouseX,mouseY,450+i,(data.getInt(3)*100-80))<10)
    {
      stroke(224,244,156);
      line(450+i,(data.getFloat(3)*100)-80,450+i,(next_data.getFloat(3)*100)-80);
    }
    }
   if(j%4==1){
    text("SATM",1020,20);
    rect(840,370,50,-4);
     rect(910,370,50,-48);
      rect(980,370,50,-164);
       rect(1050,370,50,-228);
        rect(1120,370,50,-98);
      //stroke(224,244,156);
      textSize(11);
      text("301-400",840,395);
      text("401-500",910,395);
      text("501-600",980,395);
      text("601-700",1050,395);
      text("701-800",1120,395);
      text("2",840,360);
      text("24",910,315);
      text("82",980,190);
      text("114",1050,135);
      text("49",1120,268);
      
     
    }
    if(j%4==2){
    text("SATV",1020,20);
   rect(840,370,50,-10);
     rect(910,370,50,-56);
      rect(980,370,50,-162);
       rect(1050,370,50,-218);
        rect(1120,370,50,-94);
        textSize(11);
      text("301-400",840,395);
      text("401-500",910,395);
      text("501-600",980,395);
      text("601-700",1050,395);
      text("701-800",1120,395);
      text("5",840,355);
      text("28",910,310);
      text("81",980,200);
      text("109",1050,145);
      text("47",1120,270);
    }
    if(j%4==3){
    text("ACT",1020,20);
    rect(840,370,50,-26);
     rect(910,370,50,-92);
      rect(980,370,50,-224);
       rect(1050,370,50,-192);
        rect(1120,370,50,-8);
    textSize(11);
      text("15-19",840,395);
      text("20-24",910,395);
      text("25-29",980,395);
      text("30-34",1050,395);
      text("35-40",1120,395);
      text("13",840,325);
      text("46",910,270);
      text("112",980,140);
      text("96",1050,165);
      text("4",1120,360);
    }
    if(j%4==0){
    text("GPA",1020,20);
     rect(840,370,50,-6);
     rect(910,370,50,-36);
      rect(980,370,50,-84);
       rect(1050,370,50,-162);
        rect(1120,370,50,-254);
    textSize(11);
      text("[1.5,2)",840,395);
      text("[2,2.5)",910,395);
      text("[2.5,3)",980,395);
      text("[3,3.5)",1050,395);
      text("[3.5,4)",1120,395);
      text("3",840,360);
      text("18",910,330);
      text("42",980,270);
      text("81",1050,200);
      text("127",1120,110);
    }
   
}
}}
void keyPressed()
{
  j++;counter++;
  
}
void mouseMoved()
{
}

       
     
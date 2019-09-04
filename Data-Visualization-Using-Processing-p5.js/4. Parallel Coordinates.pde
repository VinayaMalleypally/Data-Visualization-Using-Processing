String S;
Table table;
void setup() {
  size(800, 400); 
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
void draw()
{
int length;
//background(255,255,255);
fill(229, 222, 13);
rect(650,30,10,10);
rect(650,50,10,10);
rect(650,70,10,10);
textSize(15);
fill(239, 7, 224);
text("Click below buttons for ",650,10);
text("AXIS SWAPPING ",650,22);
text("SATV-SATM",670,40);
text("ACT-SATV",670,60);
text("GPA-ACT",670,80);
//rect(700,300,25,25);
//text("PRESS RED",690,250);
//text("TO CLEAR PAGE",690,275);
text("Press Key 'a' for PARRALEL COORDINATES PLOT ",25,25);
text("Press key 'z' for AXIS SWITCHING",25,50);
text("Click on below Red button for respective AXIS SWITCHING",50,75);
fill(255,0,0);
rect(25,65,10,10);
rect(50,140,10,10);
rect(250,140,10,10);
rect(450,140,10,10);
rect(650,140,10,10);
stroke(229, 222, 13);

}  

void keyPressed()
{
for(int i=0; i<table.getRowCount(); i++) 
    {
      TableRow data = table.getRow(i);
   
    fill(148, 39, 173);
    if(dist(mouseX,mouseY, 50,(data.getInt(0)/2)-25)<2)
      text(data.getInt(0), 50,(data.getInt(0)/2)-25);
      else
        fill(#CCCCCC);
   }
  if (key=='a' )
 {
   background(255,255,255);
   line(25,height-25,700,height-25);
   line(25,height-25,25,125);
   ellipse(50,height-25,3,3);
   ellipse(250,height-25,3,3);
   ellipse(450,height-25,3,3);
   ellipse(650,height-25,3,3);
   text("SATM",45,height-10);
   text("SATV",245,height-10);
   text("ACT",445,height-10);
   text("GPA",645,height-10);
   textSize(10);
   text("MAX",5,170);
   text("MIN",5,height-25);
   if(table != null)
   {
    for(int i=0; i<table.getRowCount(); i++) 
    {
      TableRow data = table.getRow(i);
      line(50,(data.getInt(0)/2)-25,250,(data.getInt(1)/2.5)+55);
      line(250,(data.getInt(1)/2.5)+55,450,(data.getInt(2)*10.3)+15);
      line(450,(data.getInt(2)*10.3)+15,650,(data.getFloat(3)*90)+15);
      if(dist(mouseX,mouseY,50,(data.getInt(0)/2)-25)<5)
      text(data.getInt(0),50,(data.getInt(0)/2)-25);
    }
    
  }
 }
  
  if(key=='z')
  {
    background(255,255,255);
    line(25,150,675,150);
    line(25,height-25,25,125);
    ellipse(50,150,3,3);
    ellipse(250,150,3,3);
    ellipse(450,150,3,3);
    ellipse(650,150,3,3);
    text("SATM",60,145);
    text("SATV",260,145);
    text("ACT",460,145);
    text("GPA",660,145);
    textSize(10);
   text("MIN",5,170);
   text("MAX",5,height-25);
    if(table != null)
    { 
    for(int i=table.getRowCount()-1; i>0; i--) 
    {
      TableRow data = table.getRow(i);
      line(50,height-(data.getInt(0)/2)+150,250,height-(data.getInt(1)/2.5)+70);
      line(250,height-(data.getInt(1)/2.5)+70,450,height-(data.getInt(2)*10)+100);
      line(450,height-(data.getInt(2)*10)+100,650,height-(data.getFloat(3)*90)+110);
      
    }
}
}}
  void mousePressed()
  {
    
    if(dist(mouseX,mouseY, 655,35)<10)
    {
       background(255,255,255);
      for(int i=table.getRowCount()-1; i>0; i--) 
    {
      TableRow data = table.getRow(i);
      stroke(13, 229, 20);
      line(50,(data.getInt(1)/2.5)+55,250,(data.getInt(0)/2)-25);
      line(250,((data.getInt(0)/2)-25),450,(data.getInt(2)*10.3)+15);
      line(450,(data.getInt(2)*10.3)+15,650,(data.getFloat(3)*90)+15);
      text("SATV",45,height-10);
      text("SATM",245,height-10);
      text("ACT",445,height-10);
      text("GPA",645,height-10);
      textSize(10);
      text("MAX",5,170);
      text("MIN",5,height-25);
      line(25,height-25,675,height-25);
      line(25,height-25,25,125);
      ellipse(50,height-25,3,3);
      ellipse(250,height-25,3,3);
      ellipse(450,height-25,3,3);
      ellipse(650,height-25,3,3);
      
    }
    }
    if(dist(mouseX,mouseY, 655,55)<10)
    {
      background(255,255,255);
      line(25,height-25,675,height-25);
      line(25,height-25,25,125);
      ellipse(50,height-25,3,3);
      ellipse(250,height-25,3,3);
      ellipse(450,height-25,3,3);
      ellipse(650,height-25,3,3);
      text("SATM",45,height-10);
      text("ACT",245,height-10);
      text("SATV",445,height-10);
      text("GPA",645,height-10);
      textSize(10);
      text("MAX",5,170);
      text("MIN",5,height-25);
      for(int i=table.getRowCount()-1; i>0; i--) 
    {
       TableRow data = table.getRow(i);
       stroke(8, 202, 216);
       line(50,(data.getInt(0)/2)-25,250,(data.getInt(2)*10.3)+15);
       line(250,(data.getInt(2)*10.3)+15,450,(data.getInt(1)/2.5)+55);
       line(450,(data.getInt(1)/2.5)+55,650,(data.getFloat(3)*90)+15);
      }
    }
    if(dist(mouseX,mouseY, 655,75)<10)
    {
      background(255,255,255);
      line(25,height-25,675,height-25);
      line(25,height-25,25,125);
      ellipse(50,height-25,3,3);
      ellipse(250,height-25,3,3);
      ellipse(450,height-25,3,3);
      ellipse(650,height-25,3,3);
      text("SATM",45,height-10);
      text("SATV",245,height-10);
      text("GPA",445,height-10);
      text("ACT",645,height-10);
      textSize(10);
      text("MAX",5,170);
      text("MIN",5,height-25);
      for(int i=table.getRowCount()-1; i>0; i--) 
    {
       TableRow data = table.getRow(i);
       stroke(157, 6, 216);
       line(50,(data.getInt(0)/2)-25,250,(data.getInt(1)/2.5)+55);
       line(250,(data.getInt(1)/2.5)+55,450,(data.getFloat(3)*90)+15);
       line(450,(data.getFloat(3)*90)+15,650,(data.getInt(2)*10.3)+15);
    }
   }
   if(dist(mouseX,mouseY,55,145)<10)
   {
     background(255,255,255);
   line(25,height-25,700,height-25);
   line(25,height-25,25,125);
   ellipse(50,height-25,3,3);
   ellipse(250,height-25,3,3);
   ellipse(450,height-25,3,3);
   ellipse(650,height-25,3,3);
   text("SATM",45,height-10);
   text("SATV",245,height-10);
   text("ACT",445,height-10);
   text("GPA",645,height-10);
   textSize(10);
   text("MAX",5,170);
   text("MIN",5,height-25);
   text("MIN",45,170);
   text("MAX",45,height-25);
   if(table != null)
   {
    for(int i=0; i<table.getRowCount(); i++) 
    {
      TableRow data = table.getRow(i);
      line(50,height-(data.getInt(0)/2)+150,250,(data.getInt(1)/2.5)+55);
      line(250,(data.getInt(1)/2.5)+55,450,(data.getInt(2)*10.3)+15);
      line(450,(data.getInt(2)*10.3)+15,650,(data.getFloat(3)*90)+15);
    }
    }
   }
   if(dist(mouseX,mouseY,255,145)<50){
     background(255,255,255);
   line(25,height-25,700,height-25);
   line(25,height-25,25,125);
   ellipse(50,height-25,3,3);
   ellipse(250,height-25,3,3);
   ellipse(450,height-25,3,3);
   ellipse(650,height-25,3,3);
   text("SATM",45,height-10);
   text("SATV",245,height-10);
   text("ACT",445,height-10);
   text("GPA",645,height-10);
   textSize(10);
   text("MAX",5,170);
   text("MIN",5,height-25);
   text("MIN",235,170);
   text("MAX",235,height-25);
   if(table != null){
    for(int i=0; i<table.getRowCount(); i++) 
    {
      TableRow data = table.getRow(i);
      line(50,(data.getInt(0)/2)-25,250,height-(data.getInt(1)/2.5)+80);
      line(250,height-(data.getInt(1)/2.5)+80,450,(data.getInt(2)*10.3)+15);
      line(450,(data.getInt(2)*10.3)+15,650,(data.getFloat(3)*90)+15);
    }
    }
   }
   if(dist(mouseX,mouseY,455,145)<10)
   {
     background(255,255,255);
   line(25,height-25,700,height-25);
   line(25,height-25,25,125);
   ellipse(50,height-25,3,3);
   ellipse(250,height-25,3,3);
   ellipse(450,height-25,3,3);
   ellipse(650,height-25,3,3);
   text("SATM",45,height-10);
   text("SATV",245,height-10);
   text("ACT",445,height-10);
   text("GPA",645,height-10);
   textSize(10);
   text("MAX",5,170);
   text("MIN",5,height-25);
   text("MIN",435,170);
   text("MAX",435,height-25);
   if(table != null)
   {
    for(int i=0; i<table.getRowCount(); i++) 
    {
      TableRow data = table.getRow(i);
      //stroke(201, 16, 56);
      line(50,(data.getInt(0)/2)-25,250,(data.getInt(1)/2.5)+55);
      line(250,(data.getInt(1)/2.5)+55,450,height-(data.getInt(2)*10)+120);
      line(450,height-(data.getInt(2)*10)+120,650,(data.getFloat(3)*90)+15);
      if(dist(mouseX,mouseY,50,(data.getInt(0)/2)-25)<5)
      text(data.getInt(0),50,(data.getInt(0)/2)-25);
    }
    
   }
  }
   if(dist(mouseX,mouseY,655,145)<10){
     background(255,255,255);
   line(25,height-25,700,height-25);
   line(25,height-25,25,125);
   ellipse(50,height-25,3,3);
   ellipse(250,height-25,3,3);
   ellipse(450,height-25,3,3);
   ellipse(650,height-25,3,3);
   text("SATM",45,height-10);
   text("SATV",245,height-10);
   text("ACT",445,height-10);
   text("GPA",645,height-10);
   textSize(10);
   text("MAX",5,170);
   text("MIN",5,height-25);
   text("MIN",635,170);
   text("MAX",635,height-25);
   if(table != null)
   {
    for(int i=0; i<table.getRowCount(); i++) 
    {
      TableRow data = table.getRow(i);
      line(50,(data.getInt(0)/2)-25,250,(data.getInt(1)/2.5)+55);
      line(250,(data.getInt(1)/2.5)+55,450,(data.getInt(2)*10.3)+15);
      line(450,(data.getInt(2)*10.3)+15,650,height-(data.getFloat(3)*90)+130);
      if(dist(mouseX,mouseY,50,(data.getInt(0)/2)-25)<5)
      text(data.getInt(0),50,(data.getInt(0)/2)-25);
    }
    
  }
   }
 
  }
  
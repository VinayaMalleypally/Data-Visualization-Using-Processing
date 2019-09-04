Table table1;                                              
String fileloc;                                            
String[] head = {"SATM","SATV","ACT","GPA"}; 
int pick;
void setup()
{
  size(800,600);                                           
  background(234,234,234);                                
  selectInput("Select the data file:\n","fileSelected");   
}

void fileSelected(File newfile)
{
    fileloc = newfile.getAbsolutePath();                 
    table1 = loadTable(fileloc, "header");               
}

void mouseMoved(){
 stroke(0,0,255);
 fill(234,234,234);
 //rect(width-210,4,185,(table1.getColumnCount()*15)+10);
 rect(width-245,10,240,50,10);
 if(mouseX>50 && mouseX<=50+(table1.getRowCount()*2) && get(mouseX,mouseY)!=-1381654)
 {     
   fill(255,20,10);
   stroke(0,0,200);
   strokeWeight(3);
   textSize(15);
   text("ACT:"+ceil((mouseX-50)/10),width-200,30);
   text("GPA:"+((height-mouseY-50)/100.0),width-200,50);
 }   
}

void draw()
{
  stroke(255,255,255);
  text("GPA",0,325);
  strokeWeight(3);
  stroke(0,0,0);
  line(50,600,50,0);                                    
  line(0,550,800,550);                                  
  text("ACT score",300,588);
  int datasize;
  for(int i=50;i<=450;i+=50)                            
  {
    text((i-50)/10,i,570);
  }
  for(float j=400;j>=0;j-=50)                          
  {
    stroke(0,100,0);
    textSize(12);
    text((j)/100,10,550-j);
  }
  if(table1!= null) 
  {    
    datasize = table1.getRowCount();
    stroke(0,100,0);
    textSize(15);
    fill(255,0,0);
    text("ACT < 30 and GPA < 3.0",100,50);
    fill(0,255,0);
    text("ACT > 30 and GPA > 3.0",100,70);
    fill(255,255,255);
    text("All others",100,90);
    for(int i=0; i<datasize; i++) 
    {
      TableRow data = table1.getRow(i);               
      stroke(250);
      fill(255,0,0);
      strokeWeight(4);
      if(data.getInt(2)>30 & data.getFloat(3)>3.0){   
        stroke(0,255,0);
        point(50+data.getInt(2)*10,550-data.getFloat(3)*100);
      }
      else if(data.getInt(2)>30 ){
      stroke(255,255,255);
      point(50+data.getInt(2)*10,550-data.getFloat(3)*100);
      }
      else if(data.getFloat(3)>3.0 ){
      stroke(255,255,255);
      point(50+data.getInt(2)*10,550-data.getFloat(3)*100);
      }
      else{
        stroke(255,0,0);
        point(50+data.getInt(2)*10,550-data.getFloat(3)*100);  
      }
     }
  }
}
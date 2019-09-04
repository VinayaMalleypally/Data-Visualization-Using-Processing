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

void keyPressed()
{  
  stroke(0,0,255);
  fill(0,0,50);
  textSize(12);
  text("Press A - SATM bargraph",55,20);
  text("Press S - SATV bargraph",55,40);
  text("Press D - ACT bargraph",55,60);
  text("Press F - GPA bargraph",55,80);
  if(key == 'a' || key == 'A'){
    pick = 0;
    text("Bar graph for "+head[pick],(width-50)/2,height-10);              
    }
    else if(key == 's' || key == 'S'){
      pick = 1;
      text("Bar graph for "+head[pick],(width-50)/2,height-10);
    }
    else if(key == 'd' || key == 'D')
    {
      pick = 2;
      text("Bar graph for "+head[pick],(width-50)/2,height-10);              
    }
    else if(key == 'f' || key == 'F')
    {
      pick = 3;
      text("Bar graph for "+head[pick],(width-50)/2,height-10);              
    }
    else
    {
      text("Error in key selection",(width-50)/2,height-10);
    }
}

void mouseMoved(){
  float[] count = new float[table1.getColumnCount()];
  fill(234,234,234);
  stroke(0,0,200);
  rect(width-245,10,240,50,10);
  if(mouseX>50 && mouseX<50+(table1.getRowCount()*2) && get(mouseX,mouseY)!=-1381654)
  {     
    fill(255,20,10);
    stroke(0,0,200);
    for(int i=0;i<table1.getColumnCount();i++)
    {
      count[i]=table1.getFloat(int(floor((mouseX-50)/2)),i);
      fill(0);
      textSize(13);
      strokeWeight(4);
      text("{SATM      SATV      ACT       GPA  }",575,25);
      text("{",575,45);
      text(count[i]+" ",580+(i*55),45);
      text("}",785,45);
    }
  }   
}

void draw(){                                          
  
  stroke(0,0,0);  
  strokeWeight(2);
  line(50,600,50,0);                                  
  line(0,550,800,550);                                
  if(keyPressed)
  {
    if(pick<table1.getColumnCount()){
    clear();
    background(255);   
    stroke(0);                                                      
    strokeWeight(1);                                                 
    
    textSize(15);                                                   
    fill(200,80,120);  
    
    float M=0;
    
    for(int i=0;i<table1.getRowCount();i++)
    { 
      TableRow data = table1.getRow(i);
      if(M<data.getFloat(pick))
      {
         M = data.getFloat(pick);
      }
    }
    float m=M;
    for(int l=0;l<table1.getRowCount();l++)
    {                            
       TableRow data = table1.getRow(l);
       if(m>data.getFloat(pick))
       {
           m=data.getFloat(pick); 
       }
     }
     float var=1;                                                      
     var=0.4*((height-20)/(M-m));             
     for(int k=0;k<table1.getRowCount()-1;k++)
     {
      TableRow data = table1.getRow(k);
      TableRow next_data = table1.getRow(k+1);
      fill(0);stroke(8);
      point(53+(2*k),height-50-(data.getFloat(pick)*var));
      fill(0,0,234);
      strokeWeight(3);
      line(53+(2*k),height-50-(data.getFloat(pick)*var),53+(2*(k+1)),height-50-(next_data.getFloat(pick)*var));          
     }
    if(mousePressed)
    {  
        mousePressed();  
    }
    }
    else{
    fill(255);stroke(0);
    rect(width-210,4,185,(table1.getColumnCount()*15)+10);
  }
  }
  
  keyPressed();
}
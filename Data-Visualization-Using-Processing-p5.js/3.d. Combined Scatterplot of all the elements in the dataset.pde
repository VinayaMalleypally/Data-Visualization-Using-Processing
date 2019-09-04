Table table1;                                                       // Initializes table variable to load data into
String fileloc;                                                     // Initializes string variable to store file location

void setup()
{
  size(600,600);                                                    // Setting canvas size
  background(180,180,180);                                          // Setting canvas background  
  selectInput("Select the data file:\n","fileSelected");            // Asking user to select the data file
}

void fileSelected(File newfile)
{
    fileloc = newfile.getAbsolutePath();                            // Getting the file path
    table1 = loadTable(fileloc, "header");                          // Loading the data into table
}
void draw() 
{
  strokeWeight(1);
  for(int l=0; l<600; l+=150)                                       // Loop to divide the canvas into 16 equal squares
  {
     line(l,0,l,600);                                               // Draws vertical lines
     line(0,l,600,l);                                               // Draws horizontal lines
  }
  if(table1!= null) 
  {    
    strokeWeight(2);                                                // Setting stroke weight for the following text
    stroke(255,255,255);  
    fill(255,255,255);                                          
    text("SATM",0,75);                                              // Writing text on the canvas
    text("SATV",0,225);
    text("ACT",0,375);
    text("GPA",0,525);
    text("SATM",75,15);
    text("SATV",225,15);
    text("ACT",375,15);
    text("GPA",525,15);
    for(int i=0;i<table1.getRowCount();i++)
    {
      TableRow data = table1.getRow(i);                             // Reading rows in the data file  
      for(int j=0;j<table1.getColumnCount();j++)
      {
        float yvalue=data.getFloat(j);                              // Getting y coordinates to draw scatter plot
        if(j==0 || j==1)
          yvalue=yvalue/8;                                          // Dividing SATM and SATV values by 8 to fit them in the canvas square
        if(j==2)
          yvalue=yvalue*4;                                          // Multiplying ACT values with 4 to fit the canvas
        if(j==3)
          yvalue=yvalue*20;                                         // Multiplying GPA values with 20 to fit the canvas
       yvalue=(150*(1+j))-yvalue;                                   // Moving to succeding division in the canvas
       for(int k=0;k<table1.getColumnCount();k++)  
       {
         if(j==k)
           continue;
         float xvalue=data.getFloat(k);                             // Getting x coordinates to draw scatter plot
         if (k==0 || k==1)                                          
           xvalue=xvalue/8;                                         // Dividing SATM and SATV values by 8 to fit them in the canvas square
         if (k==2)
           xvalue=xvalue*4;                                         // Multiplying ACT values with 4 to fit the canvas
         if (k==3)
           xvalue=xvalue*20;                                        // Multiplying GPA values with 20 to fit the canvas
         xvalue=(150*k)+xvalue;                                     // Moving to succeding division in the canvas
         stroke(0,0,0);
         fill(0,0,0);
         point(xvalue,yvalue);                                      // Plotting the scatter plot
        }
      }
    }
  }
}
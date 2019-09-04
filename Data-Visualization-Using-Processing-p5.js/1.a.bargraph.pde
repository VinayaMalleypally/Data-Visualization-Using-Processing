
Table table;
int[] year;
int[] i1;
float[] f1;
String[] s;
int mag=25;
public void setup() {
  size(600,600);
  background(255);
  fill(200, 200, 30, 50);
  selectInput("Select a file to process:", "fileSelected");
}

public void fileSelected(File f) {
  if (f == null) {
    println("Window was closed or the user hit cancel.");
  } else {
    println("User selected " + f.getAbsolutePath());
  String lines[]=loadStrings(f);
  saveStrings("data2.csv",lines);
   table = loadTable("data2.csv","header,csv");
  year=new int[table.getRowCount()];
  i1=new int[table.getRowCount()];
  f1=new float[table.getRowCount()];
  s=new String[table.getRowCount()];
  }
}
//println("In the year "+ year[i] +","+s[i]+" party got "+ i1[i]+" seats");
void draw() {

if(table!=null){
   for (int i = 0; i<table.getRowCount(); i++) {
    TableRow row = table.getRow(i);
    year[i]=row.getInt("YEAR");
    
    f1[i]=row.getFloat("VALUE0");
    i1[i]=row.getInt("VALUE1");
    s[i]=row.getString("PARTY");
   }
  for (int x = 0; x < f1.length; x++) {
    
    int m=100;
    fill(200, 200, 30, 50);
    float posY=550-(f1[x]*50);
    rect(((((width-50)/f1.length)*x)+50),posY,(width-50)/f1.length,f1[x]*50);
    stroke(255);
    fill(50);
    textSize(20);
    text(year[x],(((width-50)/f1.length)*x)+50,580);
    stroke(0);
    strokeWeight(2);
    line(50,width,50,0);
    line(0,width-50,height,width-50);
  } 
 }
}
Table table;
int M,V,A;
float GPA;
void setup() {
  size(600,600);
  background(135,206,250);
  table= loadTable("proj3.csv","header,csv");
  selectInput("Select a file to process:", "fileSelected");
}
public void fileSelected(File selection) {
  if (selection == null) {
    println("Window was closed or the user hit cancel.");
  } else {
    println("User selected " + selection.getAbsolutePath());
  }
}
void draw() {
if(table!=null){
   for (int i = 0; i<table.getRowCount(); i++) {
    TableRow row = table.getRow(i);
    M=row.getInt("SATM");
    V=row.getInt("SATV");
    A=row.getInt("ACT");
    GPA=row.getFloat("GPA");
    line(50,500,50,100);
    line(150,500,150,100);
    line(250,500,250,100);
    line(350,500,350,100);
    line(450,500,450,100);
    line(50,500,450,500);
    line(50,400,450,400);
    line(50,300,450,300);
    line(50,200,450,200);
    line(50,100,450,100);
    
    
    rect(50+(A*2),500-(GPA*10),2,2);
    rect(50+(A*2),400-(V/10),2,2);
    rect(50+(A*2),300-(M/10),2,2);
    
    rect(150+(M/10),500-(GPA*10),2,2);
    rect(150+(M/10),400-(V/10),2,2);
    rect(150+(M/10),200-(A*2),2,2);
    
    rect(250+(V/10),500-(GPA*10),2,2);
    rect(250+(V/10),300-(M/10),2,2);
    rect(250+(V/10),200-(A*2),2,2);
    
    rect(350+(GPA*10),400-(V/10),2,2);
    rect(350+(GPA*10),300-(M/10),2,2);
    rect(350+(GPA*10),200-(A*2),2,2);
    
    fill(221, 15, 36);
    text("GPA",18,450);
    text("SATV",18,350);
    text("SATM",18,250);
    text("ACT",18,150);
    
    text("ACT",100,522);
    text("SATM",200,522);
    text("SATV",300,522);
    text("GPA",400,522);
    
    fill(239,202,52);
    stroke(3);
   }
 }
}
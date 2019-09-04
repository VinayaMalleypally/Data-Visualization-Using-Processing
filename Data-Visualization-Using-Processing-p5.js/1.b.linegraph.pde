Table table;
int year,a;
float[] b;
void setup() {
  size(600,600);
  background(33,56,43);
  table= loadTable("proj2data.csv","header,csv");
    selectInput("Select a file to process:", "fileSelected");

   for (int i = 0; i<table.getRowCount(); i++) {
    TableRow row = table.getRow(i);
    {
    b=new float[table.getRowCount()];
   }
}}
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
    year=row.getInt("YEAR");
    b[i]=row.getFloat("VALUE0");
     if(i>0)
      line(((i-1)*75+25),500-(b[i-1]*50),(i*75+25),500-(b[i]*50));  
  text(year,(i)*75+10,520);
    stroke(1);
   }
 }
}
JSONObject jsonMainObj;
String[] props; 
JSONArray array1,array2;

PVector set =new PVector(0,0);
boolean flag=true;

int col;
int count=1;
  
color[] colarray = new color[11];

class Node{
 
   private static final float ATTRACTION_CONSTANT=0.01; 
   private static final float REPULSIVE_CONSTANT=0.001; 
   private static final int  springLength=10;

  String id;
  int group;
  PVector position;
  float timeStamp;
  int mass;
  PVector netForce;
  PVector netRepulsiveForce;
  PVector netAttractiveForce;
  ArrayList<Integer> adjacencyList;
  PVector velocity;
  
  Node(){
   
    position= new PVector(random(380,420),random(380,420));
    mass=100;
    timeStamp=0.001;
    netRepulsiveForce=new PVector(0,0);
    netAttractiveForce=new PVector(0,0);
    netForce=new PVector(0,0);
    velocity=new PVector(0,0);
    adjacencyList=new ArrayList<Integer>();
  }
  
}

class Link{
 
  String source,target;
  int value;
  
  
}

ArrayList<Node> nodeList=new ArrayList<Node>();
ArrayList<Link> linkList=new ArrayList<Link>();

HashMap<String,Integer> hm=new HashMap<String,Integer>();

void setup(){
  size(800,800);
  selectInput("Select a CSV file to Import", "selectedFile");
 
  
}

void selectedFile(File selection){
  if(selection == null) {
    println("Invalid Selection. Re-Run to Import File.");
  }
  else 
  {
    
    jsonMainObj=loadJSONObject(selection.getAbsolutePath());
    props=(String[]) jsonMainObj.keys().toArray(new String[jsonMainObj.size()]);
     array1 = jsonMainObj.getJSONArray(props[0]);
     array2 = jsonMainObj.getJSONArray(props[1]);
     for(int i=0;i<array1.size();i++){
     JSONObject temp=array1.getJSONObject(i);
     Node node1=new Node();
     node1.id=temp.getString("id");
     node1.group=temp.getInt("group");
     hm.put(node1.id,i);
     nodeList.add(node1);
  }
  for(int i=0;i<array2.size();i++)
  {
    JSONObject temp=array2.getJSONObject(i);
    Link link1=new Link();
    link1.source=temp.getString("source");
    link1.target=temp.getString("target");
    link1.value=temp.getInt("value");
    linkList.add(link1);
    nodeList.get(hm.get(link1.source)).adjacencyList.add(hm.get(link1.target));
  }
  
  colarray[0] = color(100,255,35);
  colarray[1] = color(220,200,85);
  colarray[2] = color(185,65,200);
  colarray[3] = color(0,145,35);
  colarray[4] = color(169,70,200);
  colarray[5] = color(190,105,200);
  colarray[6] = color(50,135,100);
  colarray[7] = color(45,135,100);
  colarray[8] = color(45,195,230);
  colarray[9] = color(90,180,210);
  colarray[10] = color(50,135,210);
}
}

void draw()
{
  fill(255);
  rect(0,0,width,height);
  drawIt();
  calculateForces();
  calculateVelocity();
  updatePosition();
}

void drawIt()
{
  for(int i=0;i<linkList.size();i++)
  {
    line(nodeList.get(hm.get(linkList.get(i).source)).position.x,nodeList.get(hm.get(linkList.get(i).source)).position.y,nodeList.get(hm.get(linkList.get(i).target)).position.x,nodeList.get(hm.get(linkList.get(i).target)).position.y);
  }
  for(int i=0;i<nodeList.size();i++)
  {
    println();
    int x=(nodeList.get(i).group);
    color c= colarray[x];
    fill(c);
    ellipse(nodeList.get(i).position.x,nodeList.get(i).position.y,20,20);
    noFill();
  }
}

void calculateForces()
{
  for(int i=0;i<nodeList.size();i++)
  {
    for(int j=0;j<nodeList.size();j++)
    {
      if(i!=j)
      {
        if(nodeList.get(i).adjacencyList.contains(hm.get(nodeList.get(j).id)))
        {
        // calculate attractive forces
        PVector temp1=PVector.sub(nodeList.get(j).position,nodeList.get(i).position);
        float temp2=temp1.mag();
        PVector temp3=PVector.div(temp1,temp2);
        PVector temp4=PVector.mult(temp3,attractiveForce(j,i));
        if(!Float.isNaN(temp2))
        {
          PVector.add(nodeList.get(i).netAttractiveForce,temp4,nodeList.get(i).netAttractiveForce); 
        }
      }
      PVector temp1=PVector.sub(nodeList.get(i).position,nodeList.get(j).position);
      float temp2=temp1.mag();
      PVector temp3=PVector.div(temp1,temp2);  
      PVector temp4=PVector.mult(temp3,repulsiveForce(i,j));
      if(!Float.isNaN(temp2))
      PVector.add(nodeList.get(i).netRepulsiveForce,temp4,nodeList.get(i).netRepulsiveForce); 
    }
  }
}
}
void calculateVelocity()
{
  for(int i=0;i<nodeList.size();i++)
  {
    Node n=nodeList.get(i);
    n.netForce=PVector.sub(n.netRepulsiveForce,n.netAttractiveForce);
    PVector temp1=PVector.div(n.netForce,n.mass);  //accelaration
    PVector temp2=PVector.mult(temp1,n.timeStamp); //delta V
    PVector.sub(n.velocity,temp2,n.velocity);   
  } 
}
void updatePosition()
{
  for(int i=0;i<nodeList.size();i++)
  {
    PVector temp=PVector.mult(nodeList.get(i).velocity,nodeList.get(i).timeStamp);
    PVector temp1=new PVector(0,0);
    PVector.add(nodeList.get(i).position,temp,temp1);
    if(temp1.x<0 || temp1.x> 800 || temp1.y<0 || temp1.y>800)
    flag=false;
    if(flag==true)
    PVector.add(nodeList.get(i).position,temp,nodeList.get(i).position);
  }
}

float getDistance(int i , int j )
{
  return PVector.dist(nodeList.get(i).position,nodeList.get(j).position);
}
float attractiveForce(int i ,int j)
{
  float proximity=Math.max(getDistance(i,j),1);
  float force=Node.ATTRACTION_CONSTANT *Math.max(proximity-Node.springLength,1);
  return force;
}
float repulsiveForce(int i, int j)
{
  float distance=getDistance(i,j);
  float force=(Node.REPULSIVE_CONSTANT*nodeList.get(i).mass*nodeList.get(j).mass)/(distance)*(distance);
  return force;
}
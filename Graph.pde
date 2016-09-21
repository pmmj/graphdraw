import java.util.ArrayList;


public class Graph {
  
  private ArrayList<Vertex> vertices = new ArrayList<Vertex>();
  private ArrayList<Edge> edges = new ArrayList<Edge>();
 
  public Graph(int v) {
    for (int i = 0; i < v; i++) {
       vertices.add(new Vertex(Integer.toString(i)));    
    }
    
  }
  
  public void complete() {
    int i = 0;
    int j;
    int cap = vertices.size();
    while (i < cap) {
      j = i + 1;
      while (j < cap) {
          createEdge(vertices.get(i), vertices.get(j));
          j++;
      }
      i++;
    }
  }
  
  
     
  public void createEdge(Vertex a, Vertex b) {
    
    // only creating a simple graph
    //println();
    Edge e = new Edge(a, b);
    //println("TRYING TO PRINT " + e.getName());
    if (!(edges.contains(e))) {
      //println("CREATEME");
      edges.add(e);
      a.addEdge(e);
      b.addEdge(e);
    }
    /*
    else {
      println("COULD NOT CREATE LOL");
    }
    */
    println();
    
  }
  
  // print methods
  
  public void printVertices() {
   for (int i = 0; i < vertices.size(); i++) {
     print(vertices.get(i).getValue());
     
    }
  }
  
  public void printEdges() {
    for (int i = 0; i < edges.size(); i++) {
      println(edges.get(i).getName());
    }
  }
  
  // draw methods
  
  public void drawComplete() {
    int edgeLength = 100;
    int nodeRadius = 30;
    int center_x = 400;
    int center_y = 400;
    int n = vertices.size();
    float angle = 2 * PI / n;
    int i = 0;
    while (i < n) {
      float relativeX = center_x + (edgeLength * cos(i * angle));
      float relativeY = center_y - (edgeLength * sin(i * angle));
      ellipse(relativeX, relativeY, nodeRadius, nodeRadius);
      vertices.get(i).setXPos(relativeX);
      vertices.get(i).setYPos(relativeY);
      i++;
    }
    drawEdges();

  }
  
  public void drawEdges() {
    int i = 0;
    while (i < edges.size()) {
      Vertex[] ends = edges.get(i).ends();
      Vertex a = ends[0];
      Vertex b = ends[1];
      line(a.getXPos(), a.getYPos(), b.getXPos(), b.getYPos());
      i++;
    }
  }
  
  
  // get methods 
  
  public ArrayList<Edge> getEdges() {
    return edges; 
  }
  public int getNumberOfEdges() {
    return edges.size();
  }
  
  public ArrayList<Vertex> getVertices() {
    return vertices; 
  }
  public int getNumberOfVertices() {
    return vertices.size();
  }
  
  
}
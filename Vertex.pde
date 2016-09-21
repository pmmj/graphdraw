import java.util.ArrayList;

public class Vertex {
  
  private String value;
  private ArrayList<Edge> incidents = new ArrayList<Edge>(); 
  private ArrayList<Vertex> neighbours = new ArrayList<Vertex>();
  private int degree = 0;
  private float x, y;
  
  
  public Vertex(String value) {
    this.value = value;
  }
  
  public void addEdge(Edge e) {
    incidents.add(e);
    degree++;
    Vertex[] ends = e.ends();
    if (ends[0] == this && !(neighbours.contains(ends[1]))) {
      neighbours.add(ends[1]);
    }
  }
  
  
  // GET METHODS
  
  public String getValue() {
    return value;
  }
  
  public ArrayList<Vertex> getNeighbours() {
    return neighbours;
  }
  
  public ArrayList<Edge> getIncidents() {
    return incidents;
  }
  
  public int degree() {
    return degree;
  }
  
  public void setXPos(float x) {
    this.x = x;   
  }
  
  public float getXPos() {
    return x;
  }
  
  public void setYPos(float y) {
    this.y = y;   
  }
  
  public float getYPos() {
    return y;
  }
  
  
  
    
  
}
import java.util.ArrayList;

void setup() {
  size(800,800);
  g.printVertices();
  g.complete();
  println("EDGES");
  g.printEdges();
  
}

public Graph g = new Graph(20);

void draw() {
  background(204);
  g.drawComplete();
}
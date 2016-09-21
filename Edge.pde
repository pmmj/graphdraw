public class Edge {
   private Vertex[] ends = new Vertex[2];
   private String s = "";
   
   public Edge(Vertex a, Vertex b){
   ends[0] = a;
   ends[1] = b;
   this.s = "(" + ends[0].getValue() + ", " + ends[1].getValue() + ")";
   }
   
   public Vertex[] ends() {
   return ends;
   }
   
   public boolean equals(Edge rs) {
     boolean isEqual = false;
     
     if (this.ends() == rs.ends() || (this.ends()[0] == rs.ends()[1] && this.ends()[1] == rs.ends()[0] ) ) {
         isEqual = true;
     }
     
     return isEqual;
   }
   
   
   public String getName() {
     return s;
   }
   
   
   
}
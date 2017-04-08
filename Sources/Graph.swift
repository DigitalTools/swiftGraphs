import Foundation



public class Graph {
    
    
    private var canvas: Array<Vertex>
    
    
    public init() {
        canvas = Array<Vertex>()
    }
    
    
    public func addVertex(key: String) -> Vertex {
        
        var childVertex: Vertex = Vertex()
        childVertex.key = key
        
        canvas.append(childVertex)
        
        return childVertex
        
    }
    
    
    public func addEdge(source: Vertex, neighbor: Vertex) {
        
        var newEdge = Edge()
        
        newEdge.neighbor = neighbor
        source.neighbors.append(newEdge)
        
        var reverseEdge = Edge()
        reverseEdge.neighbor = source
        neighbor.neighbors.append(reverseEdge)
        
    }
    
    
}

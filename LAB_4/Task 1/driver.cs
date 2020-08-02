using System;
using GraphTraversal;

namespace Driver
{
    class GraphTraversalDemo
    {
         //Calling methods
        public static void Main() {
            Graph graph = new Graph(4);
            graph.AddEdge(0,1);
            graph.AddEdge(0, 2);
            graph.AddEdge(1,2);
            graph.AddEdge(2,0);
            graph.AddEdge(2,3);
            graph.AddEdge(3,3);
            //Print adjacency matrix
            graph.PrintAdjacecnyMatrix();
 
            Console.WriteLine("BFS traversal starting from vertex 2:");
            graph.BFS(2);
            Console.WriteLine("DFS traversal starting from vertex 2:");
            graph.DFS(2);

            Console.WriteLine("\nPress any key to exit");
            Console.ReadKey();
        }
    }
}
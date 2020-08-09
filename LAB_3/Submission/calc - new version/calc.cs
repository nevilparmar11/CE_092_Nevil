using System;
using System.Reflection;

/// Additional function to create dll file 
[assembly: AssemblyVersion("1.0.0.0")]
namespace operation
{
	public class Operation
	{
		public int Addition(int num1, int num2)
		{
            Console.WriteLine("This is addition method");
			return (num1 + num2);
		}
		public int Multiplication(int num1, int num2)
		{
            Console.WriteLine("This is multiplication method");
			return (num1 * num2);
		}
	}
}
using System;

/// Programe to print "Hello World on Console"

namespace Greeting
{
	public class HelloWorld
	{
		/// Driver Method
		static void Main(string[] args)			
		{
			Console.WriteLine("Hello World!");

			/// Halt the console to wait for user input and display the result
			Console.WriteLine("Press any key to exit");
			Console.ReadLine();
		}
	}
}
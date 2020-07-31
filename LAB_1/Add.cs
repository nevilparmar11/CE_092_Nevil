using System;

/// Addition of two number by taking input from user via Console

namespace Addition
{
	public class Add
	{
		static void Main(string[] args)
		{
			/// Scan number 1
			Console.Write("Enter Number 1 : ");
			int num1 = int.Parse(Console.ReadLine());

			/// Scan number 2
			Console.Write("Enter Number 2: ");
			int num2 = int.Parse(Console.ReadLine());

			/// Display result by calling addition method
			int result = addition(num1, num2);
			Console.WriteLine("Result is {0}", result);

			/// Halt the console to wait for user input and display the result
			Console.WriteLine("Press any key to exit");
			Console.ReadLine();
		}
		
		/// static function for addition of two numbers
		static int addition(int num1, int num2)
		{
			return (num1 + num2);
		}
	}
}

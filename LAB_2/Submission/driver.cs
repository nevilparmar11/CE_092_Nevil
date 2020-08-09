using System;
/// to demonstrate the use of Calc.dll file
using operation;

namespace Driver
{
	public class driver
	{
		static void Main(string[] args)
		{
			/// object of class operation, which contains addition and multiplication method
            Addition addition = new Addition();
            Multiplication multiplication = new Multiplication();

			/// Scan number 1
			Console.Write("Enter Number 1 : ");
			int num1 = int.Parse(Console.ReadLine());

			/// Scan number 2
			Console.Write("Enter Number 2: ");
			int num2 = int.Parse(Console.ReadLine());

			Console.WriteLine("Addition is : {0}", addition.Add(num1, num2));
			Console.WriteLine("Multiplication is : {0}", multiplication.Mul(num1, num2));
			
			/// Halt the console to wait for user input and display the result
			Console.WriteLine("Press any key to exit");
			Console.ReadLine();
		}
	}
}
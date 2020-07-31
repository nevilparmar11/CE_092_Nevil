## List of commands used in this LAB.
1. csc /target:exe HelloWorld.cs 
- generates exe file named HelloWorld.exe

2. csc /target:exe Add.cs
- generates Add.exe inside the same folder

3. csc /target:library /out:addition.dll addition.cs
- generates addition.dll file, which can be referenced from any driver program to use

4. csc /target:exe /r:addition.dll driver.cs
- generates driver.exe file and uses addtion.dll file as a reference during compilation

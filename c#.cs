// Program penghitung penjumlahan dan perkalian 1 - 10

using System;

class JumlahKali
{
    static void Main()
    {
        int perkalian;
        int penjumlahan;
        int i;
       
        penjumlahan = 0;
        perkalian = 1;
      
        for (i = 1; i <= 10; i++)
        {
            penjumlahan = penjumlahan + i;
            perkalian = perkalian * i;
        }
        Console.WriteLine("Penjumlahan adalah " + penjumlahan);
        Console.WriteLine("Perkalian adalah " + perkalian);
   
    }
}
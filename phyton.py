#PROGRAM MENENTUKAN TAHUN KABISAT

tahun = int(input("Tulis Sebuah Tahun: "))
 
if (tahun % 4) == 0:
 
   if (tahun % 100) == 0:
 
       if (tahun % 400) == 0:
 
           print("{0} adalah Tahun Kabisat".format(tahun))
 
       else:
           print("{0} bukan Tahun Kabisat".format(tahun))
 
   else:
       print("{0} adalah Tahun Kabisat".format(tahun))
 
else:
   print("{0} bukan Tahun Kabisat".format(tahun))
// Program menghitung luas persegi atau segitiga

#include <iostream.h>
#include <conio.h>

int segitiga (int alas, int t) {
    int LS;
    LS=0.5*alas*t;
    return LS;
}

int persegi (int s){
    int LP;
    LP=s*s;
    return LP;
}

void main () {
    int a;
    float lagi, LP,LS,s,alas,t;
    clrscr();

    cout<<" 1. Menghitung Luas Persegi."<<endl;
    cout<<" 2. Menghitung Luas Segitiga."<<endl;

    cout<<"masukan pilihan : ";cin>>a;

switch (a){
    case 1: cout<<"masukan sisi ";
    cin>>s;
    LP=persegi(s);
    cout<<"luas persegi adalah "<<LP;
    break;
    case 2: cout<<"Masukkan alas ";
    cin>>alas;
    cout<<"Masukkan tinggi ";
    cin>>t;

   LS=segitiga (alas,t);
   cout<<"Luas segitiga adalah "<<LS;
   break;
}

getch ();
}
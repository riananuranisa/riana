// Menghitung total belanja

import java.util.Scanner;

public class HitungTotalBelanja {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.print("Harga barang 1: ");
        int hargaBarang1 = input.nextInt();
        System.out.print("Harga barang 2: ");
        int hargaBarang2 = input.nextInt();
        System.out.print("Harga barang 3: ");
        int hargaBarang3 = input.nextInt();

        System.out.print("Jumlah barang 1: ");
        int jumlahBarang1 = input.nextInt();
        System.out.print("Jumlah barang 2: ");
        int jumlahBarang2 = input.nextInt();
        System.out.print("Jumlah barang 3: ");
        int jumlahBarang3 = input.nextInt();

        int totalBelanja = (hargaBarang1 * jumlahBarang1) + (hargaBarang2 * jumlahBarang2) + (hargaBarang3 * jumlahBarang3);

        System.out.println("Total belanja: " + totalBelanja);
    }
}
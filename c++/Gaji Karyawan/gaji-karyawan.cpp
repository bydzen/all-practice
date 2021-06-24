#include <iostream>

using namespace std;

int main() {
    int jamKerja = 14 - 8; /* Jam kerja normal = 6 jam */
    int jamKaryawan, uangLembur, uangTambahan, normalGaji, gajiTotal;

    normalGaji = 15000000; /* Gaji normal 15 Juta */

    cout << "Gaji karyawan bekerja selama " << jamKerja << " adalah Rp." << normalGaji << "." << endl;
    cout << "Jika karyawan memiliki jam kerja lebih banyak, maka akan dihitung sebagai uang lembur." << endl << endl;

    /* Input jam kerja karyawan */
    cout << "Jam kerja karyawan: ";
    cin >> jamKaryawan;

    if (jamKaryawan >= 8) { /* Jika karyawan memiliki jam kerja 8 jam atau lebih */
        cout << "Karyawan memiliki jam lembur 8 jam atau lebih." << endl;
        uangLembur = 2500;
        uangTambahan = ((jamKaryawan - jamKerja) * 2) * uangLembur;
        cout << "Uang tambahan: Rp." << uangTambahan << "/lembur" << endl << endl;
    } else if (jamKaryawan < 8 && jamKaryawan > 6) { /* Jika karyawan memiliki jam kerja kurang dari 8 jam */
        cout << "Karyawan memiliki jam lembur kurang dari 8 jam." << endl;
        uangLembur = 500;
        uangTambahan = ((jamKaryawan - jamKerja) * 4) * uangLembur;
        cout << "Uang tambahan: Rp." << uangTambahan << "/lembur" << endl << endl;
    }

    /* Total gaji yang diberikan sesuai jam kerja karyawan selama 30 hari */
    gajiTotal = (uangTambahan * 30) + normalGaji;
    cout << "Gaji total karyawan selama 30 hari adalah: Rp." << gajiTotal << ".";

    return 0;
}

// include needed //
#include "list_relasi.h"

void createList(list_relasi& L) {
    // create new list relation //
    first(L) = NULL;
};

address_relasi alokasi(address_child C) {
    // allocate list relation //
    address_relasi P = new elmlist_relasi;

    info(P) = C;
    next(P) = NULL;

    return P;
};

void insertFirstPar(list_relasi& L, address_relasi P, string x, string y) {
    // insert first list relation //
    if (first(L) != NULL) {
        address_relasi Q = first(L);

        while (Q != NULL) {
            if (info(P) == info(Q)) {
                goto NOINSERTFIRST;
            };

            Q = next(Q);
        };
    };

    next(P) = first(L);
    first(L) = P;

    system("CLS");
    cout << "\nDokter " << x << " telah direlasikan dengan Pasien " << y << ".\n";
    system("TIMEOUT /T 7");

    if (info(P) != info(P)) {
    NOINSERTFIRST:
        system("CLS");
        cout << "\nTerjadi duplikasi, relasi tidak ditambahkan.\n";
        system("TIMEOUT /T 7");
    };
};

void insertFirstChi(list_relasi& L, address_relasi P, string x, string y) {
    // insert first list relation //
    if (first(L) != NULL) {
        address_relasi Q = first(L);

        while (Q != NULL) {
            if (info(P) == info(Q)) {
                goto NOINSERTFIRST;
            };

            Q = next(Q);
        };
    };

    next(P) = first(L);
    first(L) = P;

    system("CLS");
    cout << "\nPasien " << y << " telah direlasikan dengan Dokter " << x << ".\n";
    system("TIMEOUT /T 7");

    if (info(P) != info(P)) {
    NOINSERTFIRST:
        system("CLS");
        cout << "\nTerjadi duplikasi, relasi tidak ditambahkan.\n";
        system("TIMEOUT /T 7");
    };
};

void printInfoZeroChild(list_relasi L, int& RC_max) {
    // stop print child of no exiting data //
    address_relasi P = first(L);
    int i = 0;
    int j = 0;

    while (P != NULL) {
        if (info(info(P)) == "") {
            goto NEXIT;
        };

        j++;

        if (i == -1) {
        NEXIT:
            cout << "";
        };

        P = next(P);
    };

    RC_max = j;
};

void printInfoRChild(list_relasi L) {
    // print info relation list with child list //
    address_relasi P = first(L);
    int i = 0;

    while (P != NULL) {
        if (info(info(P)) == "") {
            goto DONTPRINTRC;
        };

        cout << "\n        -> Pasien: " << info(info(P));

        if (i == -1) {
        DONTPRINTRC:
            cout << "";
        };

        P = next(P);
    };

    cout << endl;
};

void printInfoRFChild(list_relasi L, int& RF_max) {
    // print info child list with parent list //
    address_relasi P = first(L);
    int i = 0;
    int j = 0;

    while (P != NULL) {
        if (info(info(P)) == "") {
            goto DONTPRINTRF;
        };

        cout << "Pasien: " << info(info(P)) << "\n";
        j++;

        if (i == -1) {
        DONTPRINTRF:
            cout << "";
        };

        P = next(P);
    };

    if (j != 0) {
        cout << "        -> ";
    };

    RF_max = j;
};

void printBusy(list_relasi L, int& i_max) {
    // print busy of parent list with child list//
    int i = 0;
    address_relasi P = first(L);

    while (P != NULL) {
        if (info(info(P)) == "") {
            goto TOZERO;
        };

        i++;

        if (i == -1) {
        TOZERO:
            cout << "";
        };

        P = next(P);
    };

    i_max = i;
};

address_relasi findElm(list_relasi L, address_child C) {
    // find the element of relation list //
    address_relasi P = first(L);

    while (P != NULL) {
        if (info(P) == C) {
            return P;
        };
        P = next(P);
    };

    return NULL;
};

void insertAfter(address_relasi& Prec, address_relasi P) {
    // insert after relation list //
    next(P) = next(Prec);
    next(Prec) = P;
};

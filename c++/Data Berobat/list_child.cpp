// include needed //
#include "list_child.h"

void createListChild(list_child& L) {
    // create new child list //
    first(L) = NULL;
    last(L) = NULL;
};

address_child alokasi_child(infotype_child x) {
    // allocate child list //
    address_child P = new elmlist_child;

    info(P) = x;
    next(P) = NULL;
    prev(P) = NULL;

    return P;
};

void insertFirstChild(list_child& L, address_child P, int& nifc) {
    // insert first child list //
    address_child S = first(L);
    int i = 0;

    if (first(L) == NULL) {
        goto INSERTC;
    };

    S = first(L);
    while (next(S) != NULL) {
        if (info(S) == info(P)) {
            system("CLS");
            cout << "\nDuplikasi terdeteksi, input ulang!\n";
            system("TIMEOUT /T 7");
            system("CLS");
            goto NOINSERTC;
        };
        S = next(S);
    };

    if (info(S) == info(P)) {
        system("CLS");
        cout << "\nDuplikasi terdeteksi, input ulang!\n";
        system("TIMEOUT /T 7");
        system("CLS");
        goto NOINSERTC;
    }

INSERTC:
    if (first(L) == NULL) {
        last(L) = P;
        first(L) = P;
    }
    else {
        next(P) = first(L);
        prev(first(L)) = P;
        first(L) = P;
    };

    nifc = 0;

    if (i == -1) {
    NOINSERTC:
        nifc = 1;
        cout << "";
    };
};

void printInfoChild(list_child L) {
    // print info child list //
    address_child P = first(L);

    while (P != NULL) {
        cout << "Pasien: " << info(P) << endl;
        P = next(P);
    };
};

void printInfoChildSHOW5(list_child L, int& maxChi) {
    // print only top 5 child list //
    address_child P = first(L);
    int i = 0;
    int all = 0;

    while (P != NULL) {
        all++;
        P = next(P);
    };

    P = first(L);
    while (P != NULL) {
        cout << "Pasien: " << info(P) << endl;
        i++;

        if (i >= 5) {
            goto STSHOWCHI;
        };

        P = next(P);
    };

    maxChi = all;

    if (i == -1) {
    STSHOWCHI:
        maxChi = all;
        cout << "";
    };
};

address_child findElmChild(list_child L, infotype_child x) {
    // find the element of child list //
    address_child P = first(L);

    while (P != NULL) {
        if (info(P) == x) {
            return P;
        };
        P = next(P);
    };

    return NULL;
};

void insertAfterChild(address_child& Prec, address_child P) {
    // insert after child list //
    prev(next(Prec)) = P;
    next(P) = next(Prec);
    prev(P) = Prec;
    next(Prec) = P;
};

void deleteFirstChild(list_child& L, address_child& P) {
    // delete first child list //
    P = first(L);

    if (next(first(L)) != NULL) {
        first(L) = next(P);
        info(P) = "";
        prev(first(L)) = NULL;
        next(P) = NULL;
    }
    else {
        info(first(L)) = "";
    };
};

void deleteAfterChild(list_child& L, address_child& P, address_child Q) {
    // delete after child list //
    info(P) = "";
    next(Q) = next(P);
    next(P) = NULL;
};

void deleteLastChild(list_child& L, address_child& P) {
    // delete last child list //
    address_child  Q = first(L);

    while (next(Q) != P) {
        Q = next(Q);
    };

    info(P) = "";
    next(Q) = NULL;
};

void removeChild(list_child& L, infotype_child x) {
    // remove child list from element //
    bool NCfound = false;

        address_child P = first(L);

        while ((info(P) != x) && (next(P) != NULL)) {
            P = next(P);
        };

        if (next(P) == NULL && info(P) != x) {
            NCfound = true;
            goto NCFOUND;
        };

        if (P == first(L)) {
            cout << "\nPasien " << info(P) << " telah dihapus.\n";
            deleteFirstChild(L, P);
        }
        else if (next(P) == NULL) {
            cout << "\nPasien " << info(P) << " telah dihapus.\n";
            deleteLastChild(L, P);
        }
        else {
            address_child Q;
            Q = first(L);

            while (next(Q) != P) {
                Q = next(Q);
            };
            cout << "\nPasien " << info(P) << " telah dihapus.\n";
            deleteAfterChild(L, P, Q);
        };

NCFOUND:if (NCfound != false) {
    cout << "\nData Pasien " << x << " tidak ditemukan.\n";
    };
};

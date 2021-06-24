// include needed //
#include "list_parent.h"

void createListParent(list_parent& L) {
    // create new parent list //
    first(L) = NULL;
};

address_parent alokasi_parent(infotype_parent x) {
    // allocate parent list //
    address_parent P;

    P = new elmlist_parent;
    info(P) = x;
    next(P) = NULL;
    createList(child(P));

    return P;
};

void insertFirstParent(list_parent& L, address_parent P, int& nisf) {
    // insert first parent list //
    address_parent Q;
    address_parent S = first(L);
    int i = 0;

    if (first(L) == NULL) {
        goto INSERTF;
    };

    S = first(L);
;   while (next(S) != first(L)) {
        if (info(S) == info(P)) {
            system("CLS");
            cout << "\nDuplikasi terdeteksi, input ulang!\n";
            system("TIMEOUT /T 7");
            system("CLS");
            goto NOINSERT;
        };
        S = next(S);
    };

    if (info(S) == info(P)) {
        system("CLS");
        cout << "\nDuplikasi terdeteksi, input ulang!\n";
        system("TIMEOUT /T 7");
        system("CLS");
        goto NOINSERT;
    };

INSERTF:
    if (first(L) == NULL) {
        first(L) = P;
        next(P) = P;
    }
    else {
        Q = first(L);
        while (next(Q) != first(L)) {
            Q = next(Q);
        };
        next(P) = first(L);
        next(Q) = P;
        first(L) = P;
    };

    nisf = 0;

    if (i == -1) {
    NOINSERT:
        nisf = 1;
        cout << "";
    };
};

void printInfoParent(list_parent L) {
    // print info parent list //
    address_parent P = first(L);
    int z = 1;

    if (first(L) != NULL) {
        do {
            if (first(child(P)) != NULL) {
                if (info(P) == "") {
                    goto DONTPRINTRPAR;
                };

                printInfoZeroChild(child(P), z);
                if (z == 0) {
                    goto DONTPRINTRPAR;
                };

                if (info(P) != "") {
                    cout << "Dokter: " << info(P);
                    printInfoRChild(child(P));
                };
            };

        DONTPRINTRPAR:
            P = next(P);
        } while (P != first(L));

        if (info(P) == "") {
            goto NORPAR;
        };
    }
    else {
        cout << "";
    };
    if (z == -9) {
    NORPAR:
        cout << "";
    };
};

void printInfoCRel(list_parent L) {
    // print info parent list with list child relation //
    address_parent P = first(L);
    int z = 1;

    if (first(L) != NULL) {
        do {
            if (first(child(P)) != NULL) {
                if (info(P) == "") {
                    goto NEXTEX;
                };

                printInfoRFChild(child(P), z);
                if (z == 0) {
                    goto NEXTEX;
                };

                if (info(P) != "") {
                    cout << "Dokter: " << info(P);
                };

                cout << endl;
            };

        NEXTEX:
            P = next(P);
        } while (P != first(L));
    };
};

void printInfoParentOnly(list_parent L) {
    // print info parent list //
    address_parent P = first(L);

    if (first(L) != NULL) {
        do {
            if (info(P) != "") {
                cout << "Dokter: " << info(P) << endl;
            };

            P = next(P);
        } while ((P) != first(L));

        if (info(P) == "") {
            goto NOPAR;
        };
    }
    else {
    NOPAR:
        first(L) = NULL;
    };
};

void printInfoParentOnlySHOW5(list_parent L, int& maxPar) {
    // print only top 5 parent list //
    address_parent P = first(L);
    int i = 0;
    int all = 0;

    if (first(L) != NULL) {
        do {
            if (info(P) != "") {
                all++;
            };

            P = next(P);
        } while ((P) != first(L));

        P = first(L);
        do {
            if (info(P) != "") {
                cout << "Dokter: " << info(P) << endl;
                i++;

                if (i >= 5) {
                    goto STSHOWPAR;
                };
            };

            P = next(P);
        } while ((P) != first(L));

        if (info(P) == "") {
            goto NOPAR;
        };
    }
    else {
    NOPAR:
        first(L) = NULL;
    };

    maxPar = all;

    if (i == -1) {
    STSHOWPAR:
        maxPar = all;
        cout << "";
    };
};

void printBusyParent(list_parent L) {
    // print busy of parent list with list child relation //
    address_parent P = first(L);
    address_parent Q = P;
    int temp_max = 0;
    int k_max;

    if (P == NULL) {
        goto ENDBUSY;
    };

    if (first(L) != NULL) {
        do {
            printBusy(child(P), k_max);
            if (k_max == 0) {
                goto NEXTBUSY;
            };

            if (temp_max < k_max) {
                temp_max = k_max;
                Q = P;
            };

        NEXTBUSY:
            P = next(P);
        } while (P != first(L));

        if (temp_max == 0) {
        NOBUSY:
            goto ENDBUSY;
        };

        if (info(Q) == "") {
            goto NOBUSY;
        };

        cout << "Dokter: " << info(Q);
        cout << "\nSibuk dengan: " << temp_max << " aksi.";
        printInfoRChild(child(Q));
    }
    else {
        goto ENDBUSY;
    };

ENDBUSY:
    cout << "";
};

address_parent findElmParent(list_parent L, infotype_parent x) {
    // find the element of parent list //
    address_parent P = first(L);

    do {
        if (info(P) == x) {
            return P;
        };

        P = next(P);
    } while (P != first(L));

    return NULL;
};

void deleteFirstParent(list_parent& L, address_parent& P) {
    // delete first parent list //
    P = first(L);
    first(L) = next(P);
    info(P) = "";
};

void deleteAfterParent(list_parent& L, address_parent& P, address_parent Q) {
    // delete after parent list //
    next(Q) = next(P);
    next(P) = NULL;
};

void deleteLastParent(list_parent& L, address_parent& P) {
    // delete last parent list //
    address_parent  Q = first(L);

    while (next(Q) != P) {
        Q = next(Q);
    };

    next(Q) = NULL;
};

void removeParent(list_parent& L, infotype_parent x) {
    // remove parent list from element //
    bool NPfound = false;

        address_parent P = first(L);

        while ((info(P) != x) && (next(P) != first(L))) {
            P = next(P);
        };

        if (next(P) == first(L) && info(P) != x) {
            NPfound = true;
            goto NPFOUND;
        };

        if (P == first(L)) {
            cout << "\nDokter " << info(P) << " telah dihapus.\n";
            deleteFirstParent(L, P);
        }
        else if (next(P) == NULL) {
            cout << "\nDokter " << info(P) << " telah dihapus.\n";
            deleteLastParent(L, P);
        }
        else {
            address_parent Q;

            Q = first(L);
            while (next(Q) != P) {
                Q = next(Q);
            };
            cout << "\nDokter " << info(P) << " telah dihapus.\n";
            deleteAfterParent(L, P, Q);
        };

NPFOUND:if (NPfound != false) {
    cout << "\nData Dokter " << x << " tidak ditemukan.\n";
    };
};

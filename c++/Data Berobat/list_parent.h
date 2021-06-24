// define list parent //
#ifndef LIST_PARENT_H_INCLUDED
#define LIST_PARENT_H_INCLUDED

#include <iostream>
#include "list_relasi.h"
using namespace std;

// define list parent component //
#define first(L) L.first
#define next(P) P->next
#define info(P) P->info
#define child(P) P->child

// define a parent type //
typedef string infotype_parent;
typedef struct elmlist_parent* address_parent;

// component in parent struct //
struct elmlist_parent {
    infotype_parent info;
    list_relasi child;
    address_parent next;
};

struct list_parent {
    address_parent first;
};

// all procedure //
void createListParent(list_parent& L);
void insertFirstParent(list_parent& L, address_parent P, int& nisf);
void insertAfterParent(list_parent& L, address_parent Prec, address_parent P);
void insertLastParent(list_parent& L, address_parent P);
void deleteFirstParent(list_parent& L, address_parent& P);
void deleteLastParent(list_parent& L, address_parent& P);
void deleteAfterParent(list_parent& L, address_parent& P, address_parent Q);
void dealokasiParent(address_parent& P);
void printInfoParent(list_parent L);
void removeParent(list_parent& L, infotype_parent x);
void printInfoParentOnly(list_parent L);
void printInfoParentOnlySHOW5(list_parent L, int& maxPar);
void maxRelChildPar(list_parent L, int& fullRel);
void printBusyParent(list_parent L);
void printInfoCRel(list_parent L);

// all function //
address_parent alokasi_parent(infotype_parent x);
address_parent findElmParent(list_parent L, infotype_parent x);

#endif // LIST_PARENT_H_INCLUDED

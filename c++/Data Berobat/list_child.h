// define list child //
#ifndef LIST_CHILD_H_INCLUDED
#define LIST_CHILD_H_INCLUDED

#include <iostream>
using namespace std;

// define list child component //
#define next(P) P->next
#define prev(P) P->prev
#define first(L) L.first
#define last(L) L.last
#define info(P) P->info
#define parent(P) P->parent

// define a child type //
typedef string infotype_child;
typedef struct elmlist_child* address_child;

// component in child struct //
struct elmlist_child {
    infotype_child info;
    address_child next;
    address_child prev;
};

struct list_child {
    address_child first;
    address_child last;
};

// all procdeure //
void createListChild(list_child& L);
void insertFirstChild(list_child& L, address_child P, int& nifc);
void insertLastChild(list_child& L, address_child P);
void insertAfterChild(address_child Prec, address_child P);
void deleteFirstChild(list_child& L, address_child& P);
void deleteLastChild(list_child& L, address_child& P);
void deleteAfterChild(address_child Prec, address_child& P, address_child Q);
void dealokasiChild(address_child& P);
void printInfoChild(list_child L);
void printInfoChildSHOW5(list_child L, int& maxChi);
void removeChild(list_child& L, infotype_child x);

// all function //
address_child findElmChild(list_child L, infotype_child x);
address_child alokasi_child(infotype_child x);

#endif // LIST_CHILD_H_INCLUDED

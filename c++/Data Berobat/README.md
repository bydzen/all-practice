# Data Treatment (ID: Algoritma dan Struktur Data)

[![Awesome](https://cdn.rawgit.com/sindresorhus/awesome/d7305f38d29fed78fa85652e3a63e154dd8e8829/media/badge.svg)](https://github.com/sindresorhus/awesome)

This project was created to fulfill a large assignment in an algorithm and data structure course. Where is our job to make medical data that is based on multiple lists. This project is carried out by two people to complete a program.

## Developed By

Sultan Kautsar - *1303194010* - [Sultan Kautsar](https://github.com/svzax)<br>
Bagas Alfito Prismawan - *1303193027* - [Bagas Mahier](https://github.com/BagasMahier12a)

<p align="center">
  <img weight="400px" height="400px" src="https://github.com/svzax/TubesMultiLinklist_ASD_DataBerobat/blob/master/Data%20Berobat/img/lottie2.gif">
</p>

## Getting Started

Form three multi-linked list is used to represent and guarantee the m-n relationship The difference between the multi-linked list form IIIB and the previous one is that the relation list is a child list of the parent element.

### Prerequisites

Should at least be able to understand one of the C, C ++, or C # programming languages. and little knowledge about data structures to understand this project

```cpp
#include <iostream>

int main() {
    std::cout << "Hello World!";
    return 0;
}
```

### Installing

Code::Blocks is a program that is suitable for us in making this project. With the application console, we can handle this project well.

Installing Code::Blocks, can be installed using the following steps.

```
Windows: http://sourceforge.net/projects/codeblocks/files/Binaries/20.03/Windows/32bit/codeblocks-20.03mingw-32bit-setup.exe
```

Installing Code::Blocks for Linux user (tested in Debian)

```
user@debian$ sudo apt install codeblocks
```

End, and wait until the installation process is complete.

## Running the tests

To open this project, simply clone to the directory folder, open the Code::Blocks software then go to file navigation and open the file. Navigate to the cloned directory and open it with a file extension (.cbp) to open the entire project.

### Break down into end to end tests

Simply search for Compile & Run navigation to run the program.

For Linux users can create a build program to get files with the extension (.o) so that it can run. 

```
user@debian$ sudo gcc -o namefile.c
```

Execute the namefile.

```
user@debian$ sudo ./namefile
```

### And coding style tests

The test program has been run successfully and the overall functionality works well. For Windows you can open the settings and compiler, toolchain executable.

For Linux, test this to check that gcc is installed correctly or not.

```
user@debian$ sudo gcc
```

## Deployment Functionality

- [x] Penambahan dokter. ```(no error)``` +up to 6 doctor per input.
- [x] Penambahan pasien. ```(no error)``` +up to 6 patient per input.
- [x] Penentuan relasi dokter dan pasien dan sebalikknya. ```(no error)``` +doctor patient and otherwise.
- [x] Menghapus data dokter tertentu. ```(no error)``` +when doctor deleted, relation will be remove automatically!
- [x] Manghapus data pasien tertentu. ```(no error)``` +when patient deleted, relation to doctor will removed!
- [x] Menampilkan data keseluruhan pasien beserta data dokternya. ```(no error)``` +say empty when no elment.
- [x] Menampilkan data pasien yang ditangani dokter tertentu. ```(no error)``` +helpful interface!.
- [x] Menampilkan data dokter yang menangani seorang pasien tertentu. ```(no error)``` +helpful interface!
- [x] Menampilkan data dokter yang tidak sibuk dan yang paling sibuk. ```(no error)``` +shows doctor busy(latest).
- [x] Mengubah nama dari salah satu data pasien ```(no error)``` +correcting when patient is leaving instantly.

## Built With

* [Bagas Mahier; Co-Author](https://github.com/BagasMahier12a/) - My team for creating this project.
* [Code::Blocks](http://www.codeblocks.org/home) - The IDE with all the features.
* [GitHubDesktop](https://desktop.github.com/) - For commite with my team remotely.

## Screenshot menu program running.
![02](https://github.com/svzax/TubesMultiLinklist_ASD_DataBerobat/blob/master/Data%20Berobat/img/2.png)
> Pros:
- User can choose which one to do;
- make it easy (interactive).
> Cons:
- Too long (not auto generated);
- Must be careful when inputting.

## Versioning

We use [GitHubDesktop](https://desktop.github.comg/) for versioning.

## Authors

* **Sultan Kautsar** - *1303194010* - [Sultan Kautsar](https://github.com/svzax)
* **Bagas Alfito Prismawan** - *1303193027* - [Bagas Mahier](https://github.com/BagasMahier12a)

## License

This project is licensed under the MIT License - see the [LICENSE](https://github.com/svzax/TubesMultiLinklist_ASD_DataBerobat/blob/master/LICENSE) file for details

## Acknowledgments

* Level: (5/5) - Hard.
* this program is currently under developing!

## Additional Screenshot

* Screenshot greeting program running.
![01](https://github.com/svzax/TubesMultiLinklist_ASD_DataBerobat/blob/master/Data%20Berobat/img/1.png)
> Purpose:
- To tell, that this is the identity of the maker.

---

* Screenshot menu program running. <br>
![02](https://github.com/svzax/TubesMultiLinklist_ASD_DataBerobat/blob/master/Data%20Berobat/img/2.png)
> Pros:
- User can choose which one to do;
- make it easy (interactive).
> Cons:
- Too long (not auto generated);
- Must be careful when inputting.

---

* Screenshot busy status program running. <br>
![03](https://github.com/svzax/TubesMultiLinklist_ASD_DataBerobat/blob/master/Data%20Berobat/img/3.png)

---

* Screenshot doctor & patient data program running. <br>
![04](https://github.com/svzax/TubesMultiLinklist_ASD_DataBerobat/blob/master/Data%20Berobat/img/4.png)

---

* Screenshot relation doctor-patient program running. <br>
![05](https://github.com/svzax/TubesMultiLinklist_ASD_DataBerobat/blob/master/Data%20Berobat/img/5.png)

End.

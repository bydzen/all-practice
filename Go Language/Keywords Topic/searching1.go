/*
File name	: searching1.go
Created		: 16 November - 29 November, 2019 @ 24.30
Author		: Sultan Kautsar & Bagas Alfito Prismawan
Student ID	: 1303194010 & 1303193027
Made for	: Tugas Besar Dasar Algoritma Pemrograman.
Description	: Program Klasifikasi Topik dari sebuah Teks.
*/

/*
AUTHOR 1 : BAGAS ALFITO PRISMAWAN (1303193027)
AUTHOR 2 : SULTAN KAUTSAR (1303194010)
*/

package main

import (
	"fmt"
	// IMPORT SORT UNTUK PENGURUTAN
	//"sort"
	// IMPORT STRINGS UNTUK MENGHILANGKAN MARKER
	"strings"
)

// MENYIMPAN NILAI KONSTAN DARI 'xxx' SEBESAR 1000
const xxx = 1000

// TIPE ARRS UNTUK SLICE STRING
// TIPE ARRX UNTUK STRING DENGAN INDEKS 1000
type (
	arrs []string
	arrx [xxx]string
)

// VARIABEL DAN KEYWORDNYA
var (
	sports     = arrs{"bola", "bulutangkis", "atletik", "lari", "push-up", "berenang", "sepakbola", "voli", "baseball", "ping-pong", "golf", "ateletik", "jogging", "bola tangkas", "karate", "sialt", "taekwondo", "kungfu", "baseball", "kasti"}
	health     = arrs{"kesehatan", "bugar", "pusing", "obat", "infeksi", "lelah", "rawat", "sakit", "suntik", "vaksin", "kesehatan,", "imunisasi", "diagnosa", "darah", "diabetes", "miopi", "hipermiopi", "kacamata", "flu", "donor"}
	technology = arrs{"IT", "teknologi", "internet", "Bandwith", " IoT", "software", "voice", "video.", "aplikasi", "smartphone", "medis", "diaplikasikan", "server", "bandwith", "komunikasi", "teks", "IT,", "video", "Teknologi", "AI"}
	economy    = arrs{"angsuran", "investasi", "emas", "uang", "dana", "hutang", "menabung", "penjualan", "inflasi", "pendapatan", "kapita", "ekonomi", "bank", "swalayan", "diskon", "potongan", "kredit", "hutang", "debit", "finansial"}
)

//FUNGSI TAMBAH KEYWORD
func wordlist() {
	var (
		in_arr string
		count_append_sports, count_append_health, count_append_technology, count_append_economy int
	)

	fmt.Print("\n--- Insert keywords (type ` to stop adding keywords!) ---\nInsert sports keywords     : ")
	c := xxx
	for i := 0; i < c; i++ {
		fmt.Scan(&in_arr)
		count_append_sports++
		if in_arr == "`" {
			break
		}
		sports = append(sports, in_arr)
	}
	fmt.Print("Insert health keywords     : ")
	for i := 0; i < c; i++ {
		fmt.Scan(&in_arr)
		count_append_health++
		if in_arr == "`" {
			break
		}
		health = append(health, in_arr)
	}
	fmt.Print("Insert technology keywords : ")
	for i := 0; i < c; i++ {
		fmt.Scan(&in_arr)
		count_append_technology++
		if in_arr == "`" {
			break
		}
		technology = append(technology, in_arr)
	}
	fmt.Print("Insert economy keywords    : ")
	for i := 0; i < c; i++ {
		fmt.Scan(&in_arr)
		count_append_economy++
		if in_arr == "`" {
			break
		}
		economy = append(economy, in_arr)
	}
	fmt.Printf("\n --- Updated keywords! ---\nSports     : %v\nHealth     : %v\nTechnology : %v\nEconomy    : %v\n", sports[20:], health[20:], technology[20:], economy[20:])
}

//FUNGSI PENGHITUNG KEYWORD DENGAN MENGGUNAKAN TAMBAHAN WORDLIST
func countArrayWordlist() {
	var (
		input_in string
		sports_count, health_count, technology_count, economy_count, text_count float64
		count_append_sports, count_append_health, count_append_technology, count_append_economy int
	)

	v := len(sports)
	b := len(health)
	n := len(technology)
	m := len(economy)

	fmt.Print("\n--- Paragraph (type ` to stop input paragraph!) ----\n")

	for i := 0; i < xxx && input_in != "`"; i++ {
		fmt.Scan(&input_in)
		/*remove := strings.Replace(input_in, "!!!", "", -1)
		fmt.Printf("%v ", remove)*/
		text_count++

		for j := 0; j < (v + count_append_sports); j++ {
			if input_in == sports[j] {
				sports_count++
			}
		}
		for j := 0; j < (b + count_append_health); j++ {
			if input_in == health[j] {
				health_count++
			}
		}
		for j := 0; j < (n + count_append_technology); j++ {
			if input_in == technology[j] {
				technology_count++
			}
		}
		for j := 0; j < (m + count_append_economy); j++ {
			if input_in == economy[j] {
				economy_count++
			}
		}
	}

	text_count = text_count - 1

	netral := (text_count) - (sports_count + health_count + technology_count + economy_count)

	// MEMBUAT DAN MENGINISIALISASI STRUCTURE
	set_keyword := []struct {
		name_key  string
		count_key float64
		symbol    string
	}{
		{"sports terdapat", sports_count, ","},
		{"health terdapat", health_count, ","},
		{"technology terdapat", technology_count, ","},
		{"economy terdapat", economy_count, ","},
	}

	// MENENTUKAN TOPIK TERBANYAK YANG SERING MUNCUL
	if sports_count > health_count && sports_count > technology_count && sports_count > economy_count {
		fmt.Print("\nTopic:\nSport\n\n")
	} else if health_count > sports_count && health_count > technology_count && health_count > economy_count {
		fmt.Print("\nTopic:\nHealth\n\n")
	} else if technology_count > sports_count && technology_count > health_count && technology_count > economy_count {
		fmt.Print("\nTopic:\nTechnology\n\n")
	} else if economy_count > technology_count && economy_count > sports_count && economy_count > health_count {
		fmt.Print("\nTopic:\nEconomy\n\n")
	} else {
		fmt.Print("\nTopic:\nNothing\n\n")
	}

	fmt.Print("Penjelasan: teks tersebut berisi ", text_count, " kata, dimana ")

	// PENGURUTAN DARI KEYWORD TERBANYAK HINGGA TERKECIL
	size := len(set_keyword)
	for i := 0; i < size; i++ {
		min := i
		for j := i; j < size; j++ {
			if set_keyword[j].count_key > set_keyword[min].count_key {
				min = j
			}
		}
		set_keyword[i].count_key, set_keyword[min].count_key = set_keyword[min].count_key, set_keyword[i].count_key
		set_keyword[i].name_key, set_keyword[min].name_key = set_keyword[min].name_key, set_keyword[i].name_key
	}

	/*sort.SliceStable(set_keyword, func(i, j int) bool {
		return set_keyword[i].count_key > set_keyword[j].count_key
	})*/

	// MENAMPILKAN JUMLAH DAN KATEGORI KEYWORDNYA
	for i := 0; i < 4; i++ {
		fmt.Print(set_keyword[i].name_key, " ", set_keyword[i].count_key, set_keyword[i].symbol, " ")
	}

	// MENENTUKAN JUMLAH PRESENTASE KEMUNCULAN DARI TOPIK TERBANYAK
	if sports_count > health_count && sports_count > technology_count && sports_count > economy_count {
		x := (sports_count / text_count)
		fmt.Printf("oleh karena itu dengan probabilitas %v / %v : %.2f ", sports_count, text_count, x)
	} else if health_count > sports_count && health_count > technology_count && health_count > economy_count {
		x := (health_count / text_count)
		fmt.Printf("oleh karena itu dengan probabilitas %v / %v : %.2f ", health_count, text_count, x)
	} else if technology_count > sports_count && technology_count > health_count && technology_count > economy_count {
		x := (technology_count / text_count)
		fmt.Printf("oleh karena itu dengan probabilitas %v / %v : %.2f ", technology_count, text_count, x)
	} else if economy_count > technology_count && economy_count > sports_count && economy_count > health_count {
		x := (economy_count / text_count)
		fmt.Printf("oleh karena itu dengan probabilitas %v / %v : %.2f ", economy_count, text_count, x)
	}
	fmt.Print("\n*Netral topic: ", netral, "\n")

}

//FUNGSI PENGHITUNG KEYWORD TANPA PENAMBAHAN KEYWORD
func countArray() {
	var (
		input_in string
		sports_count, health_count, technology_count, economy_count, text_count float64
		sports     = arrx{"bola", "bulutangkis", "atletik", "lari", "push-up", "berenang", "sepakbola", "voli", "baseball", "ping-pong", "golf", "ateletik", "jogging", "bola tangkas", "karate", "sialt", "taekwondo", "kungfu", "baseball", "kasti"}
		health     = arrx{"kesehatan", "bugar", "pusing", "obat", "infeksi", "lelah", "rawat", "sakit", "suntik", "vaksin", "kesehatan,", "imunisasi", "diagnosa", "darah", "diabetes", "miopi", "hipermiopi", "kacamata", "flu", "donor"}
		technology = arrx{"IT", "teknologi", "internet", "Bandwith", " IoT", "software", "voice", "video.", "aplikasi", "smartphone", "medis", "diaplikasikan", "server", "bandwith", "komunikasi", "teks", "IT,", "video", "Teknologi", "AI"}
		economy    = arrx{"angsuran", "investasi", "emas", "uang", "dana", "hutang", "menabung", "penjualan", "inflasi", "pendapatan", "kapita", "ekonomi", "bank", "swalayan", "diskon", "potongan", "kredit", "hutang", "debit", "finansial"}
	)

	fmt.Print("\n--- Paragraph (type ` to stop input paragraph!) ----\n")

	for i := 0; i < xxx && input_in != "`"; i++ {
		fmt.Scan(&input_in)
		/*remove := strings.Replace(input_in, "`", "", -1)
		fmt.Printf("%v ", remove)*/
		text_count++
		for j := 0; j < xxx; j++ {
			if input_in == sports[j] {
				sports_count++
			} else if input_in == health[j] {
				health_count++
			} else if input_in == technology[j] {
				technology_count++
			} else if input_in == economy[j] {
				economy_count++
			}
		}
	}

	text_count -= 1
	netral := (text_count) - (sports_count + health_count + technology_count + economy_count)

	// MEMBUAT DAN MENGINISIALISASI STRUCTURE
	set_keyword := []struct {
		name_key  string
		count_key float64
		symbol    string
	}{
		{"sports terdapat", sports_count, ","},
		{"health terdapat", health_count, ","},
		{"technology terdapat", technology_count, ","},
		{"economy terdapat", economy_count, ","},
	}

	// MENENTUKAN TOPIK TERBANYAK YANG SERING MUNCUL
	if sports_count > health_count && sports_count > technology_count && sports_count > economy_count {
		fmt.Print("\nTopic:\nSport\n\n")
	} else if health_count > sports_count && health_count > technology_count && health_count > economy_count {
		fmt.Print("\nTopic:\nHealth\n\n")
	} else if technology_count > sports_count && technology_count > health_count && technology_count > economy_count {
		fmt.Print("\nTopic:\nTechnology\n\n")
	} else if economy_count > technology_count && economy_count > sports_count && economy_count > health_count {
		fmt.Print("\nTopic:\nEconomy\n\n")
	} else {
		fmt.Print("\nTopic:\nNothing\n\n")
	}

	fmt.Printf("Penjelasan:\nTeks tersebut berisi %v kata, dimana ", text_count)

	// PENGURUTAN DARI KEYWORD TERBANYAK HINGGA TERKECIL
	size := len(set_keyword)
	for i := 0; i < size; i++ {
		min := i
		for j := i; j < size; j++ {
			if set_keyword[j].count_key > set_keyword[min].count_key {
				min = j
			}
		}
		set_keyword[i].count_key, set_keyword[min].count_key = set_keyword[min].count_key, set_keyword[i].count_key
		set_keyword[i].name_key, set_keyword[min].name_key = set_keyword[min].name_key, set_keyword[i].name_key
	}

	/*sort.SliceStable(set_keyword, func(i, j int) bool {
		return set_keyword[i].count_key > set_keyword[j].count_key
	})*/

	// MENAMPILKAN JUMLAH DAN KATEGORI KEYWORDNYA
	for i := 0; i < 4; i++ {
		fmt.Print(set_keyword[i].name_key, " ", set_keyword[i].count_key, set_keyword[i].symbol, " ")
	}

	// MENENTUKAN JUMLAH PRESENTASE KEMUNCULAN DARI TOPIK TERBANYAK
	if sports_count > health_count && sports_count > technology_count && sports_count > economy_count {
		x := (sports_count / text_count)
		fmt.Printf("oleh karena itu dengan probabilitas %v / %v : %.1f", sports_count, text_count, x)
	} else if health_count > sports_count && health_count > technology_count && health_count > economy_count {
		x := (health_count / text_count)
		fmt.Printf("oleh karena itu dengan probabilitas %v / %v : %.1f", health_count, text_count, x)
	} else if technology_count > sports_count && technology_count > health_count && technology_count > economy_count {
		x := (technology_count / text_count)
		fmt.Printf("oleh karena itu dengan probabilitas %v / %v : %.1f", technology_count, text_count, x)
	} else if economy_count > technology_count && economy_count > sports_count && economy_count > health_count {
		x := (economy_count / text_count)
		fmt.Printf("oleh karena itu dengan probabilitas %v / %v : %.1f", economy_count, text_count, x)
	}
	fmt.Print("\n*Netral topic: ", netral, "\n")
}

// FUNGSI PENGHITUNG KEYWORD MENGGUNAKAN DATATEKS
func countArrayDatTeks() {
	var (
		input_in string
		sports_count, health_count, technology_count, economy_count, text_count float64
		sports     = arrx{"bola", "bulutangkis", "atletik", "lari", "push-up", "berenang", "sepakbola", "voli", "baseball", "ping-pong", "golf", "ateletik", "jogging", "bola tangkas", "karate", "sialt", "taekwondo", "kungfu", "baseball", "kasti"}
		health     = arrx{"kesehatan", "bugar", "pusing", "obat", "infeksi", "lelah", "rawat", "sakit", "suntik", "vaksin", "kesehatan,", "imunisasi", "diagnosa", "darah", "diabetes", "miopi", "hipermiopi", "kacamata", "flu", "donor"}
		technology = arrx{"IT", "teknologi", "internet", "Bandwith", " IoT", "software", "voice", "video.", "aplikasi", "smartphone", "medis", "diaplikasikan", "server", "bandwith", "komunikasi", "teks", "IT,", "video", "Teknologi", "AI"}
		economy    = arrx{"angsuran", "investasi", "emas", "uang", "dana", "hutang", "menabung", "penjualan", "inflasi", "pendapatan", "kapita", "ekonomi", "bank", "swalayan", "diskon", "potongan", "kredit", "hutang", "debit", "finansial"}
	)

	fmt.Print("1 (with <datateks1.in)\n\nParagraf:\n")

	for i := 0; i < xxx && input_in != "`"; i++ {
		fmt.Scan(&input_in)
		remove := strings.Replace(input_in, "`", "", -1)
		fmt.Printf("%v ", remove)
		text_count++
		for j := 0; j < xxx; j++ {
			if input_in == sports[j] {
				sports_count++
			} else if input_in == health[j] {
				health_count++
			} else if input_in == technology[j] {
				technology_count++
			} else if input_in == economy[j] {
				economy_count++
			}
		}
	}
	fmt.Print("\n")

	text_count -= 1
	netral := (text_count) - (sports_count + health_count + technology_count + economy_count)

	// MEMBUAT DAN MENGINISIALISASI STRUCTURE
	set_keyword := []struct {
		name_key  string
		count_key float64
		symbol    string
	}{
		{"sports terdapat", sports_count, ","},
		{"health terdapat", health_count, ","},
		{"technology terdapat", technology_count, ","},
		{"economy terdapat", economy_count, ","},
	}

	// MENENTUKAN TOPIK TERBANYAK YANG SERING MUNCUL
	if sports_count > health_count && sports_count > technology_count && sports_count > economy_count {
		fmt.Print("\nTopic:\nSport\n\n")
	} else if health_count > sports_count && health_count > technology_count && health_count > economy_count {
		fmt.Print("\nTopic:\nHealth\n\n")
	} else if technology_count > sports_count && technology_count > health_count && technology_count > economy_count {
		fmt.Print("\nTopic:\nTechnology\n\n")
	} else if economy_count > technology_count && economy_count > sports_count && economy_count > health_count {
		fmt.Print("\nTopic:\nEconomy\n\n")
	} else {
		fmt.Print("\nTopic:\nNothing\n\n")
	}

	fmt.Printf("Penjelasan:\nTeks tersebut berisi %v kata, dimana ", text_count)

	// PENGURUTAN DARI KEYWORD TERBANYAK HINGGA TERKECIL
	size := len(set_keyword)
	for i := 0; i < size; i++ {
		min := i
		for j := i; j < size; j++ {
			if set_keyword[j].count_key > set_keyword[min].count_key {
				min = j
			}
		}
		set_keyword[i].count_key, set_keyword[min].count_key = set_keyword[min].count_key, set_keyword[i].count_key
		set_keyword[i].name_key, set_keyword[min].name_key = set_keyword[min].name_key, set_keyword[i].name_key
	}

	/*sort.SliceStable(set_keyword, func(i, j int) bool {
		return set_keyword[i].count_key > set_keyword[j].count_key
	})*/

	// MENAMPILKAN JUMLAH DAN KATEGORI KEYWORDNYA
	for i := 0; i < 4; i++ {
		fmt.Print(set_keyword[i].name_key, " ", set_keyword[i].count_key, set_keyword[i].symbol, " ")
	}

	// MENENTUKAN JUMLAH PRESENTASE KEMUNCULAN DARI TOPIK TERBANYAK
	if sports_count > health_count && sports_count > technology_count && sports_count > economy_count {
		x := (sports_count / text_count)
		fmt.Printf("oleh karena itu dengan probabilitas %v / %v : %.1f", sports_count, text_count, x)
	} else if health_count > sports_count && health_count > technology_count && health_count > economy_count {
		x := (health_count / text_count)
		fmt.Printf("oleh karena itu dengan probabilitas %v / %v : %.1f", health_count, text_count, x)
	} else if technology_count > sports_count && technology_count > health_count && technology_count > economy_count {
		x := (technology_count / text_count)
		fmt.Printf("oleh karena itu dengan probabilitas %v / %v : %.1f", technology_count, text_count, x)
	} else if economy_count > technology_count && economy_count > sports_count && economy_count > health_count {
		x := (economy_count / text_count)
		fmt.Printf("oleh karena itu dengan probabilitas %v / %v : %.1f", economy_count, text_count, x)
	}
	fmt.Print("\n*Netral topic: ", netral, "\n")
}

// MEMANGGIL FUNGSI
func main() {
	var (
		input int
		run_again, key_again, with_datateks string
	)

	fmt.Print("\n--- Program Menentukan Topik dari Sebuah Teks ---\n")
	fmt.Print("1. Fast checker (without inserting wordlist).\n2. Insert wordlist & check (insert wordlist first).\nSelect: ")
	fmt.Scan(&input)
	switch input {
	case 1:
		fmt.Print("\n3. With 'datateks.in' (y/n)?: ")
		fmt.Scan(&with_datateks)
		if with_datateks == "y" {
			fmt.Print("Run this command: 'go run searching1.go <datateks1.in'\n")
			fmt.Print("Program terminated.\n")
		} else {
			countArray()
			fmt.Print("\nRun program again (y/n)?: ")
			fmt.Scan(&run_again)
			if run_again == "y" {
				main()
			} else {
				fmt.Print("Program terminated.\n")
			}
		}
	case 2:
		key_again = "y"
		for key_again == "y" {
			wordlist()
			fmt.Print("\nWordlist saved. Add keywords again (y/n)?: ")
			fmt.Scan(&key_again)
		}
		countArrayWordlist()
		fmt.Print("\nWordlist saved. Run program again (y/n)?: ")
		fmt.Scan(&run_again)
		if run_again == "y" {
				main()
		} else {
			fmt.Print("Program terminated.\n")
		}
	case 3:
		countArrayDatTeks()
	default:
		fmt.Print("Program terminated.\n")
	}
	// END OF PROGRAM
}

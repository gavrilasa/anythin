package main

import (
	"fmt"
	"math/rand"
	"time"
)

func main() {
	fmt.Println("Game DKP - Batu Kertas Gunting")

	fmt.Println(" ")

	fmt.Println("Nama NIM")
	fmt.Println("Nama NIM")
	fmt.Println("Nama NIM")

	fmt.Println(" ")

	fmt.Println("Masukkan nama pemain: ")
	var namaPemain string
	fmt.Scanln(&namaPemain)
	fmt.Println(" ")
	fmt.Println("Pilih 1 (Batu), Pilih 2 (Kertas), atau Pilih 3 (Gunting)")
	var pilihanPemain int
	fmt.Scanln(&pilihanPemain)
	fmt.Println(" ")

	rand.Seed(time.Now().UnixNano())
	pilihanKomputer := rand.Intn(3) + 1

	var pilihanPemainStr string

	switch pilihanPemain {
	case 1:
		pilihanPemainStr = "Batu"
	case 2:
		pilihanPemainStr = "Kertas"
	case 3:
		pilihanPemainStr = "Gunting"
	default:
		fmt.Println("Pilihan tidak valid")
		return
	}

	var pilihanKomputerStr string

	switch pilihanKomputer {
	case 1:
		pilihanKomputerStr = "Batu"
	case 2:
		pilihanKomputerStr = "Kertas"
	case 3:
		pilihanKomputerStr = "Gunting"
	}

	fmt.Printf("Pilihan Anda: %s\n", pilihanPemainStr)
	fmt.Printf("Pilihan Komputer: %s\n", pilihanKomputerStr)
	fmt.Println(" ")

	switch {
	case pilihanPemain == pilihanKomputer:
		fmt.Println("Seri")
	case pilihanPemain == 1 && pilihanKomputer == 3:
		fmt.Println(namaPemain, "Menang!")
	case pilihanPemain == 2 && pilihanKomputer == 1:
		fmt.Println(namaPemain, "Menang!")
	case pilihanPemain == 3 && pilihanKomputer == 2:
		fmt.Println(namaPemain, "Menang!")
	default:
		fmt.Println("Komputer Menang!")
	}
}

package main
import (
    "fmt"
    "math"
)
func main(){
    var (
        pi float64 = 3.14
        r float64
        luas float64
    )
    fmt.Printf("Masukkan jari-jari : ")
    fmt.Scan(&r)
    luas = pi*(math.Pow(r,2))
    fmt.Println(luas)
}
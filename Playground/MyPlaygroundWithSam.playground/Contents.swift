import UIKit

var str = "Hello, playground"

protocol Printable {
    var prettyPrintedDescription: String { get }
}

struct Orang: Printable {
    var prettyPrintedDescription: String {
        return """
        Orang {
            nama: \(nama),
            umur: \(umur)
        }
        """
    }
    
    let nama: String
    let umur: Int
}

extension Orang: Decodable {}
extension Orang: Equatable {
    static func == (lhs: Orang, rhs: Orang) -> Bool {
        return lhs.nama == rhs.nama
        
    }
}

struct Mobil: Printable {
    let model: String
    let releaseDate: Date
    
    var prettyPrintedDescription: String {
        return """
        Mobil {
            model: \(model),
            releaseDate: \(releaseDate)
        }
        """
    }
}

extension Mobil: Decodable {
    
}


func prettyPrint(_ p: Printable) {
    print(p.prettyPrintedDescription)
}

prettyPrint(Orang(nama: "kambing", umur: 10))
prettyPrint(Mobil(model: "Honda", releaseDate: Date()))

let a: Array<String> = ["sapi", "burung", "3", "4"]
let b: Array<Int> = [11,22,33]

a[1].count

a.contains("sapi")
a.contains("aaa")
//a.contains(123) ga bisa

b.contains(11)

struct Kotak<T> {
    func contains(_ element: T) {
        
    }
}

struct KotakString {
    func contains(_ element: String) {
        
    }
}

struct KotakInt {
    func contains(_ element: Int) {
        
    }
}

let k = Kotak<String>()
k.contains("asdf")

let aa = Kotak<Int>()
aa.contains(123)


let orangJson = """
{
"nama": "aaa",
"umur": 12
}
""".data(using: .utf8)!


let orangDecoded = try JSONDecoder().decode(Orang.self, from: orangJson)

//Date().timeIntervalSince1970


let mobil = try JSONDecoder().decode(Mobil.self, from: """
{
    "model": "subaru",
    "releaseDate": 1547710793.99517
}
""".data(using: .utf8)!)



let o1 = Orang(nama: "anca", umur: 10)
let o2 = Orang(nama: "anca", umur: 12)

o1 == o2

let arr: [Int] = [1] + [2] + [3] + [4] + ["a"] + [true] + [5] + [6] + [7] + [8] + [9]

import Foundation

class Library {
    var shelfs = [Shelf]()
    
    func AddShelf(shelf: Shelf){
        shelfs.append(shelf)
    }
    
    func ReportAllBooks(){
        var i = 1
        for shelf in shelfs {
            for book in shelf.books {
                println("Shelf \(i) | Title: \(book.title) | Author: \(book.author) | Description: \(book.description)")
            }
            i++
        }
    }
}
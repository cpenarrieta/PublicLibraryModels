import Foundation

class Book {
    var title:String = ""
    var author:String = ""
    var description:String = ""
    var currentShelf:Shelf?
    
    func enshelf(shelf: Shelf) {
        shelf.AddBook(self)
        currentShelf = shelf
    }
    
    func unshelf() {
        if let shelf = currentShelf {
            shelf.RemoveBook(self)
        }
    }
}
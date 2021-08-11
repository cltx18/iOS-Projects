//
//  Book.swift
//  ReadMe
//
//  Created by Logan Thompson on 7/12/21.
//

import UIKit

struct Book {
    let title: String
    let author: String
    var review: String? //give review an optional review property
    
    
    var image: UIImage {
        Library.loadImage(forBook: self)
        ?? LibrarySymbol.letterSquare(letter: title.first).image
    }
}

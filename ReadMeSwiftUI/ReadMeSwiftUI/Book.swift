//
//  Book.swift
//  ReadMeSwiftUI
//
//  Created by Logan Thompson on 7/26/21.
//
import Combine

class Book: Codable, ObservableObject {

    @Published var title: String
    @Published var author: String
    @Published var microReview: String
    @Published var readMe: Bool //
// helpful to write an initializer using parameters that match your properties

    init(title: String = "Title",
         author: String = "Author",
         microReview: String = "",
         readMe: Bool = true
    ) {
        self.title = title
        self.author = author
        self.readMe = readMe
        self.microReview = microReview
    
    }
}

extension Book: Hashable, Identifiable {
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

extension Book: Equatable {
    static func == (lhs: Book, rhs: Book) -> Bool {
        lhs === rhs // easiest way to refer to two class instances
    }
    
}

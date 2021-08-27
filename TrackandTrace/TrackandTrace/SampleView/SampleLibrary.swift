//
//  SampleLibrary.swift
//  SampleLibrary
//
//  Created by Logan Thompson on 8/6/21.
//

import class UIKit.UIImage

struct Library {
  var sortedBooks: [Book] { booksCache }

  /// An in-memory cache of the manually-sorted books that are persistently stored.
  private var booksCache: [Book] = [
    .init(title: "ILCTS-999", author: "Eneique Orci"),
    .init(title: "ILCTS-998", author: "Andrei Victorov"),
    .init(title: "ILCTS-997", author: "Andrei Victorov"),
    .init(title: "ILCTS-996", author: "Enrique Orci"),
    .init(title: "ILCTS-995", author: "Enrique Orci"),
    .init(title: "ILCTS-994", author: "Andrei Victorov"),
    .init(title: "ILCTS-993", author: "Andrei Victorov"),
    .init(title: "ILCTS-992", author: "Enrique Orci"),
    .init(title: "ILCTS-991", author: "Andrei Victorov"),
    .init(title: "ILCTS-990", author: "Enrique Orci"),
    .init(title: "ILCTS-989", author: "Andrei Victorov"),
    .init(title: "ILCTS-988", author: "Andrei Victorov"),
    .init(title: "ILCTS-987", author: "Enrique Orci"),
    .init(title: "ILCTS-986", author: "Enrique Orci"),
    .init(title: "ILCTS-985", author: "Enrique Orci"),
    .init(title: "ILCTS-984", author: "Enrique Orci")
  ]


var uiImages: [Book: UIImage] = [:]
}

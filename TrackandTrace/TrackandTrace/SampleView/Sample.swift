//
//  sample.swift
//  sample
//
//  Created by Logan Thompson on 8/19/21.
//

struct Book: Hashable {
  let title: String
  let author: String

  init(title: String = "Title", author: String = "Author") {
    self.title = title
    self.author = author
  }
}

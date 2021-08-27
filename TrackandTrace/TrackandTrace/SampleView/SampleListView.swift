//
//  SampleListView.swift
//  SampleListView
//
//  Created by Logan Thompson on 8/18/21.
//

import SwiftUI

struct SampleListView: View {
    @State var library = Library()
    var body: some View {
        ZStack {
            NavigationView {
                List(library.sortedBooks, id: \.self) { book in
                    BookRow(
                        book: book,
                        image: $library.uiImages[book])
                }
                .navigationBarTitle("Samples")
            }
        }
    }
  }

  struct BookRow: View {
      let book: Book
      @Binding var image: UIImage?
          
      var body: some View {
  NavigationLink(
    destination: SampleDetailView(book: book, image: $image)
    ) {
      HStack {
          Book.Image(title: book.title, size: 80)

        VStack(alignment: .leading) {
          Text(book.title)
            .font(.title2)
          Text(book.author)
            .font(.title3)
            .foregroundColor(.secondary)
        }
        .lineLimit(1)
      }
    }
  }
}

struct SampleListView_Previews: PreviewProvider {
    static var previews: some View {
        SampleListView()
    }
}

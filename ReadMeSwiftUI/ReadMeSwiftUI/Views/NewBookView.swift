//
//  NewBookView.swift
//  NewBookView
//
//  Created by Logan Thompson on 8/6/21.
//

import SwiftUI

struct NewBookView: View {
    @ObservedObject var book = Book(title: "", author: "")
    @State var image: UIImage? = nil
    @EnvironmentObject var library: Library
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
        VStack(spacing: 24) {
            TextField("Title", text: $book.title)
            TextField("Author", text: $book.author)
            ReviewAndImageStack(book: book, image: $image)
        }
        .padding()
        .navigationTitle("New Book")
        .toolbar {
            ToolbarItem(placement: .status) {
                Button("Add to Library") {
                    library.addNewBook(book, image: image)
                    //in order to get any toolbar to show up, you need to wrap it in a navigationView
                    presentationMode.wrappedValue.dismiss()
                }
                .disabled(
                    [book.title, book.author].contains(where: \.isEmpty)
                )
            }
        }
        }
    }
}

struct NewBookView_Previews: PreviewProvider {
    static var previews: some View {
        NewBookView().environmentObject(Library())
    }
}

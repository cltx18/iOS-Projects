//
//  ReviewAndImageStack.swift
//  ReviewAndImageStack
//
//  Created by Logan Thompson on 8/6/21.
//

import class PhotosUI.PHPickerViewController
import SwiftUI

struct ReviewAndImageStack: View {
    @State var showingImagePicker = false
    @State var showingAlert = false
    @ObservedObject var book: Book
    @Binding var image: UIImage?
    
    var body: some View {
    VStack {
        Divider()
            .padding(.vertical)
        TextField("Review...", text: $book.microReview)
        Divider()
            .padding(.vertical)
        
        Book.Image(
            uiImage: image,
            title: book.title,
            cornerRadius: 16
            )
            .scaledToFit()
        
        let updateButton =
        Button("Update Image...") {
            showingImagePicker = true
        }
        .padding()
        
        if image != nil {
        HStack {
            Spacer()
            Button("Delete Image") {
                showingAlert = true
            }
            Spacer()

            updateButton
            
            Spacer()
            }
            
        } else {
            updateButton
        }
Spacer()
}
.sheet(isPresented: $showingImagePicker) {
    PHPickerViewController.View(image: $image)
}
.alert(isPresented: $showingAlert) {
        .init(
            title: .init("Delete image for \(book.title)?"),
              primaryButton: .destructive(.init("Delete")) {
            image = nil
        },
        secondaryButton: .cancel()
        )
        }
    }
}

struct ReviewAndImageStack_Previews: PreviewProvider {
    static var previews: some View {
        ReviewAndImageStack(book: .init(), image: .constant(nil))
            .padding(.horizontal)
    }
}

//
//  SampleDetailView.swift
//  SampleDetailView
//
//  Created by Logan Thompson on 8/19/21.
//
import class PhotosUI.PHPickerViewController
import SwiftUI

struct SampleDetailView: View {
    let book: Book
    @Binding var image: UIImage?
    @State var showingImagePicker = false

    var body: some View {
      VStack(alignment: .leading) {
        TitleAndAuthorStack(
          book: book,
          titleFont: .title,
          authorFont: .title2
        )
          
          VStack {
              Book.Image(title: book.title)
        
              Button("Add Image") {
                  showingImagePicker = true
              }
              .padding()
          }
              
              Spacer()
      }
      .padding()
      .sheet(isPresented: $showingImagePicker) {
          PHPickerViewController.View(image: $image)
          
      }
    }
  }

  struct SampleDetailView_Previews: PreviewProvider {
    static var previews: some View {
        SampleDetailView(book: .init(), image: .constant(nil))
        }
  }

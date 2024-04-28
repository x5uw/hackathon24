//
//  Camera Page.swift
//  attempt 1
//
//  Created by Manuel Rodriguez on 4/27/24.
//

import SwiftUI

struct Camera_Page: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()

            VStack {
                HStack {
                    Button(action: {
                        // Dismiss the view when the back arrow is tapped
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        Image(systemName: "arrow.backward")
                            .font(.system(size: 22, weight: .regular))
                            .foregroundColor(.red)
                    }
                    .buttonStyle(Button1_Style())
                    Spacer() // Pushes the button to the leading edge
                }
                .padding() // Adds padding to the top-leading corner

                Spacer() // Pushes content towards the top
                
                Button(action: {
                    // Start or stop recording
                    // viewModel.toggleRecording()
                }) {
                    Image(systemName: "record.circle")
                        .font(.system(size: 55, weight: .regular))
                        .foregroundColor(.red)
                }
                .buttonStyle(Button3_Style())
                .padding(.bottom) // Adds padding at the bottom

                HStack {
                    Spacer() // Pushes the button to the trailing edge
                    Button(action: {
                        // Perform an action for viewing the tutorial
                    }) {
                        Text("View Tutorial")
                            .font(.custom("SFNS-Regular", size: 22))
                    }
                    .buttonStyle(Button2_Style())
                }
                .padding() // Adds padding to the bottom-trailing corner
            }
        }
    }
    // MARK: additional structs
    struct Button1_Style: ButtonStyle {
        func makeBody(configuration: Self.Configuration) -> some View {
            configuration.label
                .padding(.vertical, 8)
                .padding(.horizontal, 8)
                .frame(width: 60, height: 60)
                .background(Color(hex: 0xbababa, alpha: 0.50)).clipShape(Capsule())
                .foregroundColor(.green)
        }
    }
    struct Button3_Style: ButtonStyle {
        func makeBody(configuration: Self.Configuration) -> some View {
            configuration.label
                .padding(.vertical, 8)
                .padding(.horizontal, 8)
                .frame(width: 100, height: 100)
                .background(Color(hex: 0xbababa, alpha: 0.50)).clipShape(Capsule())
                .foregroundColor(.red)
        }
    }
    struct Button2_Style: ButtonStyle {
        func makeBody(configuration: Self.Configuration) -> some View {
            configuration.label
                .padding(.vertical, 8)
                .padding(.horizontal, 10)
                .background(.teal).clipShape(Capsule())
                .foregroundColor(.white)
        }
    }
    }

struct Camera_Page_Previews: PreviewProvider {
    static var previews: some View {
        Camera_Page()
    }
}

//
//  Lifting Choice Page.swift
//  attempt 1
//
//  Created by Manuel Rodriguez on 4/27/24.
//

import SwiftUI

// MARK: SwiftUI v4
import SwiftUI
struct LiftingChoicePage: View {
    @State var geo: CGSize = .zero
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing:0) {
                VStack(alignment: .leading, spacing:0) {
                    Text("Lifting".capitalized)
                    // MARK: Add ABeeZee-Regular file to Xcode, and reference it below:
                      .font(.custom("ABeeZee-Regular", size: 80))
                      .tracking(1.33)
                      .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                      .frame(alignment: .center)
                      .foregroundColor(.teal)
                      .multilineTextAlignment(.center)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .frame(height: geo.height * 0.2, alignment: .leading)
                .background(.black)
                .clipped()
                TextField2()
                VStack(alignment: .leading, spacing:0) {}
                .frame(maxWidth: .infinity, alignment: .topLeading)
                .frame(height: geo.height * 0.05, alignment: .topLeading)
                .clipped()
                Button(action: { }) {
                    NavigationLink(destination: ExerciseSelectionPage()) {
                        Text("Upper Body")
                            .frame(maxWidth: .infinity, minHeight: 70)
                            .font(.custom("ABeeZee-Regular", size: 45))
                    }
                }
                .buttonStyle(Button1_Style())
                .frame(maxWidth: .infinity, minHeight: 70)
        
                VStack(alignment: .leading, spacing:0) {}
                .frame(maxWidth: .infinity, alignment: .topLeading)
                .frame(height: geo.height * 0.05, alignment: .topLeading)
                .clipped()
                Button(action: {}) {
                    Text("Lower Body")
                        .frame(maxWidth: .infinity, minHeight: 70)
                        .font(.custom("ABeeZee-Regular", size: 45))
                }
                .buttonStyle(Button1_Style())
                .frame(maxWidth: .infinity, minHeight: 70)
            }
            .frame(minHeight: 1, alignment: .topLeading)
            .clipped()
        }
        .frame(minWidth: UIScreen.main.bounds.width, maxWidth: .infinity, minHeight: 1, maxHeight: 852, alignment: .topLeading )
        .saveSize(in: $geo)
        .background(Color.black.ignoresSafeArea())
    }
    public struct TextField2: View {
        @FocusState private var isTextFieldFocused_wrh: Bool
        @State private var text_wrh: String = ""
        var body: some View {
            TextField("", text: $text_wrh)
              .keyboardType(.default)
            .placeholder(when: text_wrh.isEmpty, alignment: .leading) {
                Text("Search…")
                  .allowsHitTesting(false)
                  .padding(8)
                // MARK: Add ABeeZee-Regular file to Xcode, and reference it below:
                  .font(.custom("ABeeZee-Regular", size: 17))
                  .foregroundColor(Color(hex: 0xebebf5, alpha: 0.6))
                  .opacity(0.1)
                  .zIndex(1)
            }
            .focused($isTextFieldFocused_wrh)
            .showClearButtonAlways($isTextFieldFocused_wrh, text: $text_wrh)
            // MARK: Add ABeeZee-Regular file to Xcode, and reference it below:
            .font(.custom("ABeeZee-Regular", size: 17))
            .foregroundColor(Color(hex: 0xffffff, alpha: 1))
            .textFieldStyle(TextFieldStyle_wrh())
            .opacity(0.75)
            .shadow(color: Color(hex: 0x000000, alpha: 0.25), radius: 2, x: 0, y: 2)
        }
    }
    // MARK: additional structs
    struct TextFieldStyle_wrh: TextFieldStyle {
        public func _body(configuration field: TextField<_Label>) -> some View {
            field
              .textFieldStyle(PlainTextFieldStyle())
              .padding(8)
              .padding(.trailing, 32)
              .background(.gray)
              .cornerRadius(50)
        }
    }
    struct Button1_Style: ButtonStyle {
        func makeBody(configuration: Self.Configuration) -> some View {
            configuration.label
              .padding(.vertical, 8)
              .padding(.horizontal, 10)
              .frame()
              .background(Capsule().fill(.teal))
              .background(Capsule()
              .stroke(Color(hex: 0x000000, alpha: 1), style: StrokeStyle(lineWidth: 1, lineJoin: .round))
            )
              .foregroundColor(.white)
        }
    }
    struct Button1_1_Style: ButtonStyle {
        func makeBody(configuration: Self.Configuration) -> some View {
            configuration.label
              .padding(.vertical, 8)
              .padding(.horizontal, 10)
              .frame()
              .background(Capsule().fill(.teal))
              .background(Capsule()
              .stroke(Color(hex: 0x000000, alpha: 1), style: StrokeStyle(lineWidth: 1, lineJoin: .round))
            )
              .foregroundColor(.white)
        }
    }
}
extension Color {
    init(hex: Int, alpha: Double = 1.0) {
        let red = Double((hex & 0xff0000) >> 16) / 255.0
        let green = Double((hex & 0xff00) >> 8) / 255.0
        let blue = Double((hex & 0xff) >> 0) / 255.0
        self.init(.sRGB, red: red, green: green, blue: blue, opacity: alpha)
    }
}
struct TextFieldClearButton_3: ViewModifier {
    @FocusState.Binding var isFocused: Bool
    @Binding var fieldText: String
    func body(content: Content) -> some View {
        content
        .overlay {
            HStack {
                Spacer()
                Button {
                    fieldText = ""
                    } label: {
                    Image(systemName: "multiply.circle.fill")
                }
                .foregroundColor(.secondary)
                .opacity(0.6)
                .padding(.trailing, 4)
            }
        }
    }
}
struct Lifting_Choice_Page_Previews: PreviewProvider {
    static var previews: some View {
        LiftingChoicePage()
    }
}

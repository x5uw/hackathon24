import SwiftUI

struct ExerciseSelectionPage: View {
    @State var geo: CGSize = .zero
    let exercises = ["Bench Press", "Pull-Ups", "Dips", "Push-Ups", "Bicep-Curls", "Lateral Raise", "Front Raise", "Shrugs", "Chest Flyes"]
    let gridItems = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack(alignment: .leading, spacing: 0) {
                Text("Upper Body".capitalized)
                    .font(.custom("ABeeZee-Regular", size: 64))
                    .foregroundColor(.teal)
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: .infinity)
                    .frame(height: geo.height * 0.2)
                    .background(Color.black)
                    .clipped()
                
                TextField2()
                
                // Grid for buttons
                LazyVGrid(columns: gridItems, spacing: 20) {
                    ForEach(exercises, id: \.self) { exercise in
                        if exercise == "Bench Press" {
                            NavigationLink(destination: Camera_Page()) {
                                Text(exercise)
                                    .frame(width: 100, height: 100)
                                    .background(RoundedRectangle(cornerRadius: 6).fill(Color.teal))
                                    .foregroundColor(.white)
                            }
                        } else {
                            Button(exercise, action: {
                                // Action for button tap
                            })
                            .buttonStyle(Button2_Style())
                        }
                    }
                }
                .padding() // Add padding around the grid
            }
        }
        .onAppear {
            geo = UIScreen.main.bounds.size
        }
    }
}

struct TextField2: View {
    @State private var text: String = ""
    
    var body: some View {
        TextField("Search…", text: $text)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding()
    }
}

struct Button2_Style: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .padding(8)
            .frame(width: 100, height: 100)
            .background(RoundedRectangle(cornerRadius: 6).fill(Color.teal))
            .foregroundColor(.white)
    }
}


extension View {
    func showClearButtonAlways(_ isFocused: FocusState<Bool>.Binding, text: Binding<String>) -> some View {
        self.modifier(TextFieldClearButton_3(isFocused: isFocused, fieldText: text))
    }
}
extension View {
    func placeholder<Content: View>(
    when shouldShow: Bool,
    alignment: Alignment = .leading,
    @ViewBuilder placeholder: () -> Content) -> some View {
        ZStack(alignment: alignment) {
            placeholder().opacity(shouldShow ? 1 : 0)
            self
        }
    }
}

struct Exercise_Selection_Page_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseSelectionPage()
    }
}

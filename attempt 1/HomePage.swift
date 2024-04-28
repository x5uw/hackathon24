// MARK: SwiftUI v4
import SwiftUI
struct HomePage: View {
    @State var geo: CGSize = .zero
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing:0) {
                VStack(alignment: .leading, spacing:0) {
                    Text("Home".capitalized)
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
                VStack(alignment: .leading, spacing:0) {}
                .frame(maxWidth: .infinity, alignment: .topLeading)
                .frame(height: 50, alignment: .topLeading)
                .clipped()
                Button(action: { }) {
                    NavigationLink(destination: LiftingChoicePage()) {
                        HStack(spacing: 23) {
                            Image(systemName: "plus.circle")
                                .font(.system(size: 22, weight: .medium))
                                .imageScale(.large)
                            Text("Lifting")
                                .frame(maxWidth: .infinity)
                                .frame(height: 70)
                                .font(.custom("ABeeZee-Regular", size: 35)) // Make sure the font name is correct
                        }
                    }
                }
                .buttonStyle(Button1_Style())
                .frame(maxWidth: .infinity)
                .frame(height: 70)
                .buttonStyle(Button1_Style())
                .frame(maxWidth: .infinity)
                .frame(height: 70)
                VStack(alignment: .leading, spacing:0) {}
                .frame(maxWidth: .infinity, alignment: .topLeading)
                .frame(height: 50, alignment: .topLeading)
                .clipped()
                Button(action: { }) {
                    HStack(spacing: 23) {
                        Image(systemName: "plus.circle")
                          .font(.system(size: 22, weight: .medium))
                          .imageScale(.large)
                        Text("Yoga")
                          .frame(maxWidth: .infinity)
                          .frame(height: 70)
                        // MARK: Add .SFNS-Regular file to Xcode, and reference it below:
                          .font(.custom(".SFNS-Regular", size: 35))
                    }
                }
                .buttonStyle(Button1_1_Style())
                .frame(maxWidth: .infinity)
                .frame(height: 70)
                VStack(alignment: .leading, spacing:0) {}
                .frame(maxWidth: .infinity, alignment: .topLeading)
                .frame(height: 50, alignment: .topLeading)
                .clipped()
                Button(action: { }) {
                    HStack(spacing: 23) {
                        Image(systemName: "plus.circle")
                          .font(.system(size: 22, weight: .medium))
                          .imageScale(.large)
                        Text("Stretching")
                          .frame(maxWidth: .infinity)
                          .frame(height: 70)
                        // MARK: Add .SFNS-Regular file to Xcode, and reference it below:
                          .font(.custom(".SFNS-Regular", size: 35))
                    }
                }
                .buttonStyle(Button1_2_Style())
                .frame(maxWidth: .infinity)
                .frame(height: 70)
                VStack(alignment: .leading, spacing:0) {}
                .frame(maxWidth: .infinity, alignment: .topLeading)
                .frame(height: 50, alignment: .topLeading)
                .clipped()
                Button(action: { }) {
                    HStack(spacing: 23) {
                        Image(systemName: "clock")
                          .font(.system(size: 22, weight: .medium))
                          .imageScale(.large)
                        Text("History")
                          .frame(maxWidth: .infinity)
                          .frame(height: 70)
                        // MARK: Add .SFNS-Regular file to Xcode, and reference it below:
                          .font(.custom(".SFNS-Regular", size: 35))
                    }
                }
                .buttonStyle(Button1_3_Style())
                .frame(maxWidth: .infinity)
                .frame(height: 70)
            }
            .frame(minHeight: 1, alignment: .topLeading)
            .clipped()
        }
        .frame(minWidth: UIScreen.main.bounds.width, maxWidth: .infinity, minHeight: 1, maxHeight: 852, alignment: .topLeading )
        .saveSize(in: $geo)
        .background(Color.black.ignoresSafeArea())
    }
    // MARK: additional structs
    struct Button1_Style: ButtonStyle {
        func makeBody(configuration: Self.Configuration) -> some View {
            configuration.label
              .padding(.vertical, 16)
              .padding(.horizontal, 20)
              .frame(maxWidth: .infinity)
              .frame(height: 70)
              .background(Capsule().fill(.teal))
              .background(Capsule()
              .stroke(Color(hex: 0x000000, alpha: 1), style: StrokeStyle(lineWidth: 0, lineJoin: .round))
            )
              .foregroundColor(.white)
        }
    }
    struct Button1_1_Style: ButtonStyle {
        func makeBody(configuration: Self.Configuration) -> some View {
            configuration.label
              .padding(.vertical, 16)
              .padding(.horizontal, 20)
              .frame(maxWidth: .infinity)
              .frame(height: 70)
              .background(Capsule().fill(.teal))
              .background(Capsule()
              .stroke(Color(hex: 0x000000, alpha: 1), style: StrokeStyle(lineWidth: 0, lineJoin: .round))
            )
              .foregroundColor(.white)
        }
    }
    struct Button1_2_Style: ButtonStyle {
        func makeBody(configuration: Self.Configuration) -> some View {
            configuration.label
              .padding(.vertical, 16)
              .padding(.horizontal, 20)
              .frame(maxWidth: .infinity)
              .frame(height: 70)
              .background(Capsule().fill(.teal))
              .background(Capsule()
              .stroke(Color(hex: 0x000000, alpha: 1), style: StrokeStyle(lineWidth: 0, lineJoin: .round))
            )
              .foregroundColor(.white)
        }
    }
    struct Button1_3_Style: ButtonStyle {
        func makeBody(configuration: Self.Configuration) -> some View {
            configuration.label
              .padding(.vertical, 16)
              .padding(.horizontal, 20)
              .frame(maxWidth: .infinity)
              .frame(height: 70)
              .background(Capsule().fill(.teal))
              .background(Capsule()
              .stroke(Color(hex: 0x000000, alpha: 1), style: StrokeStyle(lineWidth: 0, lineJoin: .round))
            )
              .foregroundColor(.white)
        }
    }
}
// MARK: Allows for percentage based layouts
struct SizeCalculator: ViewModifier {
    @Binding var size: CGSize
    func body(content: Content) -> some View {
        content
          .background(
        GeometryReader {
            proxy in
            Color.clear
            .onAppear {
                size = proxy.size
            }
        }
        )
    }
}
extension View {
    func saveSize(in size: Binding<CGSize>) -> some View {
        modifier(SizeCalculator(size: size))
    }
}

extension Color {
    init(hex: UInt, alpha: Double = 1) {
        let red = Double((hex >> 16) & 0xff) / 255
        let green = Double((hex >> 8) & 0xff) / 255
        let blue = Double(hex & 0xff) / 255
        self.init(red: red, green: green, blue: blue, opacity: alpha)
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}

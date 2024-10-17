import SwiftUI

struct ChatRowView: View {
    var body: some View {
        HStack {
            // Profile Image
            Image(systemName: "person.crop.circle.fill") // You can replace this with an actual image
                .resizable()
                .frame(width: 50, height: 50)
                .clipShape(Circle())

            // Name Label
            Text("Trung Kiên")
                .font(.system(size: 18, weight: .semibold))
                .foregroundColor(.primary)

            Spacer()

            // Circular Progress and Badge
            ZStack {
                // Circular progress placeholder
                Circle()
                    .stroke(lineWidth: 3)
                    .opacity(0.3)
                    .foregroundColor(Color.gray)
                    .frame(width: 30, height: 30)

                // Circular progress (mock)
                Circle()
                    .trim(from: 0.0, to: 0.75) // Adjust 'to' to simulate progress
                    .stroke(AngularGradient(gradient: Gradient(colors: [.gray, .blue]), center: .center), lineWidth: 3)
                    .rotationEffect(.degrees(-90))
                    .frame(width: 30, height: 30)

                // Profile Icon inside the circular progress
                Image(systemName: "face.smiling.fill") // Replace this with actual image
                    .resizable()
                    .frame(width: 20, height: 20)
                    .clipShape(Circle())
            }
            .overlay(
                // Notification badge
                Text("9+")
                    .font(.caption2)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .frame(width: 18, height: 18)
                    .background(Color.red)
                    .clipShape(Circle())
                    .offset(x: 10, y: -10)
            )
        }
        .padding()
    }
}



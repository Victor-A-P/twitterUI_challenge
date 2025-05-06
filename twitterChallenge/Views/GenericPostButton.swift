import SwiftUI

struct GenericPostButton: View
{
    var imageString: String
    var colorFill: Color
    
    var body: some View
    {
        Image(systemName: imageString)
            .font(.caption)
            .foregroundColor(.white)
            .padding(.horizontal,5)
            .frame(width: 75, height: 45)
            .background(
                Capsule()
                    .fill(colorFill)
            )
            .animation(.easeInOut(duration: 0.2), value:1.2)
    }
}

#Preview {
    GenericPostButton(imageString: "plus", colorFill: .blue)
}

import SwiftUI

struct PostView: View {
    var body: some View
    {
        RoundedRectangle(cornerRadius: 20)
            .frame(minWidth: 300,maxWidth: 365, minHeight: 425,maxHeight: 700)
            .foregroundColor(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
            .padding()
            
            .overlay(
                 HStack
                 {
                     Image("milesGwen")
                         .resizable()
                         .scaledToFill()
                         .frame(width: 80, height: 80)
                         .clipShape(Circle())
                         .padding(.top,9)
                         .padding(.leading,19)
                     
                     Spacer().frame(width: 29)
                     
                     VStack
                     {
                         Text("User")
                             .font(.title2)
                             .fontWeight(.bold)
                             .padding(.bottom,6)
                         
                         Spacer().frame(height: 3)
                         
                         Text("@User123")
                             .font(.subheadline)
                             .fontWeight(.semibold)
                             .padding(.bottom,6)
                         
                     }
                    
                     Spacer().frame(width: 55)
                     
                     Label("Follow", systemImage: "plus")
                         .font(.subheadline)
                         .fontWeight(.semibold)
                         .font(.system(size: 10))
                         .frame(width: 100, height: 20)
                         .background(
                            Capsule()
                                .fill(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                         )
                     
                         
                 }
                    .padding()
             ,alignment: .topLeading
         )
        
            .overlay(
                VStack
                {
                    Text("Hi, Im new here and I want to share my thoughts, and the progress I have made")
                        .frame(minWidth: 300,maxWidth: 350, minHeight: 70)
                        .multilineTextAlignment(.leading)
                        .fontWeight(.medium)
                        .padding(.horizontal,30)
                    
                    Text("#HelloThere")
                        .frame(maxWidth: 350, alignment: .leading)
                        .padding(.horizontal,30)
                        .foregroundStyle(Color(#colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)))
                        .multilineTextAlignment(.leading)
                }
                    .offset(y:105)
                ,alignment: .top
            )
        
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color( #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1) ))
                    .frame(width: 350, height: 180)
                    .offset(y:-65)
                ,alignment: .bottom
            )
           
            .overlay(
                HStack
                {
                    GenericPostButton(imageString: "heart.fill", colorFill: .secondary)
                   
                    GenericPostButton(imageString: "bubble.right.fill", colorFill: .cyan)
                    
                    GenericPostButton(imageString: "square.and.arrow.up.fill", colorFill: .green)
                    
                    GenericPostButton(imageString: "bookmark.fill", colorFill: .red)
                }
                ,alignment: .bottom
            )
    
            
    }
    
}

#Preview {
    PostView()
}

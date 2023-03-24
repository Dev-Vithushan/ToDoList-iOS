
import SwiftUI

struct AddView: View {
    
    @State var textFieldInput: String = ""
    
    var body: some View {
        ScrollView{
            VStack {
                TextField("Enter Your ToDO Data here", text: $textFieldInput)
                    .padding(.horizontal)
                    .frame(height: 50)
                    .background(Color.gray)
                    .cornerRadius(10)
                
                Button(action: {}
                       , label: {
                    Text("Save")
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 50)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                })
            }
            .padding(10)
                
        }
        .navigationTitle("Add your List 🖊️")
        
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            AddView()
        }
        
    }
}

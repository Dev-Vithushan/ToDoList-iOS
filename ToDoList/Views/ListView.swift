
import SwiftUI

struct ListView: View {
    
    @State var items:[String] = [
        "This is the first Task",
        "This is the second Task",
        "This is the third Task"
    ]
    
    var body: some View {
        List {
            ForEach(items, id: \.self) { item in
                ListRowView(title:item)
                
            }
        }.navigationTitle("To-Do-List 🚀 ")
            .listStyle(PlainListStyle())
            .navigationBarItems(
                leading: EditButton(),
                trailing:
                        NavigationLink("Add", destination: AddView()
            )
            )
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ListView()
        }
        
    }
}


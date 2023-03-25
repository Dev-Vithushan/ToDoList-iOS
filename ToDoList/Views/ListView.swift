
import SwiftUI

struct ListView: View {
    
    @State var items:[ItemModel] = [
        ItemModel(title: "First Tasked", isCompleted: true),
        ItemModel(title: "Second not completed", isCompleted: false),
        ItemModel(title: "Third one is acheived", isCompleted: true),
        ItemModel(title: "Fourth one here", isCompleted: true)
        
    ]
    
    var body: some View {
        List {
            ForEach(items) { item in
                ListRowView(Item:item)
            }
            .onDelete(perform: deleteItem)
            .onMove(perform: moveItem)
            
            
        }.navigationTitle("To-Do-List 🚀 ")
            .listStyle(PlainListStyle())
            .navigationBarItems(
                leading: EditButton(),
                trailing:
                        NavigationLink("Add", destination: AddView()
            )
            )
    }
    
    func deleteItem(indexSet: IndexSet){
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to: Int){
        items.move(fromOffsets: from, toOffset: to)
    }
}




struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ListView()
        }
        
    }
}


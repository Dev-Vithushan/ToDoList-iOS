
import Foundation


class ListViewModel: ObservableObject {
    
    @Published var items:[ItemModel] = []
    
    init(){
        getItems()
    }
    
    
    func getItems(){
        
        let newItems = [
        
            ItemModel(title: "First one is the title ", isCompleted: true),
            ItemModel(title: "Second not completed", isCompleted: false),
            ItemModel(title: "Third one is acheived", isCompleted: true),
            ItemModel(title: "Fourth one here", isCompleted: true)
        
        ]
        
        items.append(contentsOf: newItems)
    }
    
    func deleteItem(indexSet: IndexSet){
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to: Int){
        items.move(fromOffsets: from, toOffset: to)
    }
}

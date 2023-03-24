
import SwiftUI

struct ListRowView: View {
    let Item: ItemModel
    
    var body: some View {
        HStack{
            Image(systemName: Item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundColor(Item.isCompleted ? .green : .red)
    
            Text(Item.title)
            Spacer()
            
        }
        .font(.title2)
        .padding(.vertical,8)
    }
}


struct ListRowView_Previews: PreviewProvider {
    
    static var item1 = ItemModel(title: "First one", isCompleted: true)
    static var item2 = ItemModel(title: "Second one ", isCompleted: false)
    
    static var previews: some View {
        Group{
            ListRowView(Item:item1)
            ListRowView(Item:item2)
        }
        .previewLayout(.sizeThatFits)
        
    }
}

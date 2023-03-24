//MVVM - Model, View, ViewModel

import SwiftUI

@main
struct ToDoListApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ListView()
            }
           
        }
    }
}

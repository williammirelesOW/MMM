import SwiftUI

// Main ContentView to include HomePageView
struct ContentView: View {
    var body: some View {
        HomePageView() // Use HomePageView as the main view
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

@main
struct MirelesMidweekMeals: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

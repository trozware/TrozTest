import Foundation
import Ignite

@main
struct IgniteWebsite {
    static func main() async {
        let site = ExampleSite()

        do {
            try await site.publish()
        } catch {
            print(error.localizedDescription)
        }
    }
}

struct ExampleSite: Site {    
    var name = "Troz"
    var titleSuffix = " – Test"
    var url = URL(string: "https://trozware.github.io/TrozTest/")!
    var builtInIconsEnabled = true

    var author = "Sarah Reichelt"

    var homePage = Home()
    var theme = MyTheme()
}

import Foundation
import Ignite

@main
struct IgniteWebsite {
    static func main() async {
        let site = ExampleSite()

        do {
            try await site.publish(buildDirectoryPath: "docs")
        } catch {
            print(error.localizedDescription)
        }
    }
}

// to test, run: ignite run -d docs --preview

struct ExampleSite: Site {    
    var name = "Troz"
    var titleSuffix = " – Test"
    var author = "Sarah Reichelt"

    // For local testing
    // var url = URL(string: "https://trozware.github.io")!

    // For build & deploy
    var url = URL(string: "https://trozware.github.io/TrozTest")!

    var builtInIconsEnabled = true

    var homePage = Home()
    var theme = MyTheme()
}

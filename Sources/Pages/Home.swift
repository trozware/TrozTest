import Foundation
import Ignite

struct Home: StaticPage {
    var title = "Home"

    func body(context: PublishingContext) -> [BlockElement] {
        Text("Page One")
            .font(.title1)

        Text("This is a test site so I can check out the Ignite framework and how to serve it.")
        Text("The Bootstrap CSS & JS files are not found in the deployment because they are not in the root folder.")
    }
}

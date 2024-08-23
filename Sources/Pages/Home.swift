import Foundation
import Ignite

struct Home: StaticPage {
    var title = "Home"

    func body(context: PublishingContext) -> [BlockElement] {
        Text("Page One")
            .font(.title1)

        Text("This is a test site so I can check out the Ignite framework and how to serve it.")
        Text("Bootstrap now working and now building to docs folder!")

        Text("Adjust the <code>url</code> in <strong>Site.swift</strong> to switch between preview and build versions.")
    }
}

import Vapor
import CloudStorage

func routes(_ app: Application) throws {
    app.get { req async in
        "It works!"
    }

    app.get("hello") { req async -> String in
        "Hello, world!"
    }
    
    app.googleCloud.storage.configuration = .default()
    try app.register(collection: FilesController())
}

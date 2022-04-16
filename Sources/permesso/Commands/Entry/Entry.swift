import ArgumentParser

internal struct Entry: ParsableCommand {
    static let configuration = CommandConfiguration(
        commandName: "permesso",
        abstract: "abstract",
        discussion: "discussion",
        version: "0.0.0",
        subcommands: [Generate.self]
    )
    
    func run() throws {
        print("r22un!")
    }
}

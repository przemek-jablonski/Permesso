import ArgumentParser

internal struct Permesso: ParsableCommand {
    static var configuration = CommandConfiguration(
        commandName: "permesso",
        abstract: "abstract",
        discussion: "discussion",
        version: "0.0.0",
        subcommands: []
    )
    
    func run() throws {
        print("run!")
    }
}

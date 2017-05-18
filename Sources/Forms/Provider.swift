import Vapor
import Leaf
import LeafProvider

public final class Provider: Vapor.Provider {
    
  public static let repositoryName = "forms"
    
  public init(config: Config) {}
    
  public func boot(_ config: Config) throws {
        
    try config.addProvider(LeafProvider.Provider.self)
        
  }

  public func boot(_ drop: Droplet) {
    do {
        
        let stem = try drop.assertStem()
        
        let tags: [Tag] = [
            ErrorsForField(),
            IfFieldHasErrors(),
            LabelForField(),
            LoopErrorsForField(),
            ValueForField()
        ]
        
        tags.forEach(stem.register)
        
    } catch {}
  }

  public func beforeRun(_ drop: Droplet) {} // Remove when able
}

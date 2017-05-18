import Leaf

public final class ValueForField: BasicTag {
    
  public func run(arguments: ArgumentList) throws -> Node? {
    guard
        arguments.count == 2,
        let fieldset = arguments[0]?.object,
        let fieldName = arguments[1]?.string,
        let value = fieldset[fieldName]?["value"]
        else { return nil }
    return value
  }

  public let name = "valueForField"

}

import Foundation
import ObjectMapper
open class StateInfo_CountryInfo: Definition {
    // Internal identifier of a state
    open var `id`: String?
    // Canonical URI of a state
    open var `uri`: String?
    convenience public init(id: String? = nil, uri: String? = nil) {
        self.init()
        self.id = `id`
        self.uri = `uri`
    }
    required public init?(map: Map) {
        super.init(map: map)
    }
    public override init() {
        super.init()
    }
    open override func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `uri` <- map["uri"]
    }
}

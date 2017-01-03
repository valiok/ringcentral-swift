import Foundation
import ObjectMapper
open class FormattingLocaleInfo: Definition {
    // Internal identifier of a formatting language
    open var `id`: String?
    // Localization code of a formatting language
    open var `localeCode`: String?
    // Official name of a formatting language
    open var `name`: String?
    convenience public init(id: String? = nil, localeCode: String? = nil, name: String? = nil) {
        self.init()
        self.id = `id`
        self.localeCode = `localeCode`
        self.name = `name`
    }
    required public init?(map: Map) {
        super.init(map: map)
    }
    public override init() {
        super.init()
    }
    open override func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `localeCode` <- map["localeCode"]
        `name` <- map["name"]
    }
}

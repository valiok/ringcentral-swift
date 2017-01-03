import Foundation
import ObjectMapper
open class RingOut_Request_To: Definition {
    // Phone number in E.164 format
    open var `phoneNumber`: String?
    convenience public init(phoneNumber: String? = nil) {
        self.init()
        self.phoneNumber = `phoneNumber`
    }
    required public init?(map: Map) {
        super.init(map: map)
    }
    public override init() {
        super.init()
    }
    open override func mapping(map: Map) {
        `phoneNumber` <- map["phoneNumber"]
    }
}

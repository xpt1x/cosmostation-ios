// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: stride/claim/query.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

/// QueryParamsRequest is the request type for the Query/Params RPC method.
struct Stride_Claim_QueryDistributorAccountBalanceRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var airdropIdentifier: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// QueryParamsResponse is the response type for the Query/Params RPC method.
struct Stride_Claim_QueryDistributorAccountBalanceResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// params defines the parameters of the module.
  var distributorAccountBalance: [Cosmos_Base_V1beta1_Coin] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// QueryParamsRequest is the request type for the Query/Params RPC method.
struct Stride_Claim_QueryParamsRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// QueryParamsResponse is the response type for the Query/Params RPC method.
struct Stride_Claim_QueryParamsResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// params defines the parameters of the module.
  var params: Stride_Claim_Params {
    get {return _params ?? Stride_Claim_Params()}
    set {_params = newValue}
  }
  /// Returns true if `params` has been explicitly set.
  var hasParams: Bool {return self._params != nil}
  /// Clears the value of `params`. Subsequent reads from it will return its default value.
  mutating func clearParams() {self._params = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _params: Stride_Claim_Params? = nil
}

struct Stride_Claim_QueryClaimRecordRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var airdropIdentifier: String = String()

  var address: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Stride_Claim_QueryClaimRecordResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var claimRecord: Stride_Claim_ClaimRecord {
    get {return _claimRecord ?? Stride_Claim_ClaimRecord()}
    set {_claimRecord = newValue}
  }
  /// Returns true if `claimRecord` has been explicitly set.
  var hasClaimRecord: Bool {return self._claimRecord != nil}
  /// Clears the value of `claimRecord`. Subsequent reads from it will return its default value.
  mutating func clearClaimRecord() {self._claimRecord = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _claimRecord: Stride_Claim_ClaimRecord? = nil
}

struct Stride_Claim_QueryClaimableForActionRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var airdropIdentifier: String = String()

  var address: String = String()

  var action: Stride_Claim_Action = .free

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Stride_Claim_QueryClaimableForActionResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var coins: [Cosmos_Base_V1beta1_Coin] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Stride_Claim_QueryTotalClaimableRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var airdropIdentifier: String = String()

  var address: String = String()

  var includeClaimed: Bool = false

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Stride_Claim_QueryTotalClaimableResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var coins: [Cosmos_Base_V1beta1_Coin] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Stride_Claim_QueryUserVestingsRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var address: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Stride_Claim_QueryUserVestingsResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var spendableCoins: [Cosmos_Base_V1beta1_Coin] = []

  var periods: [Stride_Vesting_Period] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "stride.claim"

extension Stride_Claim_QueryDistributorAccountBalanceRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".QueryDistributorAccountBalanceRequest"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "airdrop_identifier"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.airdropIdentifier) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.airdropIdentifier.isEmpty {
      try visitor.visitSingularStringField(value: self.airdropIdentifier, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Stride_Claim_QueryDistributorAccountBalanceRequest, rhs: Stride_Claim_QueryDistributorAccountBalanceRequest) -> Bool {
    if lhs.airdropIdentifier != rhs.airdropIdentifier {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Stride_Claim_QueryDistributorAccountBalanceResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".QueryDistributorAccountBalanceResponse"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "distributor_account_balance"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.distributorAccountBalance) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.distributorAccountBalance.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.distributorAccountBalance, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Stride_Claim_QueryDistributorAccountBalanceResponse, rhs: Stride_Claim_QueryDistributorAccountBalanceResponse) -> Bool {
    if lhs.distributorAccountBalance != rhs.distributorAccountBalance {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Stride_Claim_QueryParamsRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".QueryParamsRequest"
  static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Stride_Claim_QueryParamsRequest, rhs: Stride_Claim_QueryParamsRequest) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Stride_Claim_QueryParamsResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".QueryParamsResponse"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "params"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._params) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._params {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Stride_Claim_QueryParamsResponse, rhs: Stride_Claim_QueryParamsResponse) -> Bool {
    if lhs._params != rhs._params {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Stride_Claim_QueryClaimRecordRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".QueryClaimRecordRequest"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "airdrop_identifier"),
    2: .same(proto: "address"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.airdropIdentifier) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.address) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.airdropIdentifier.isEmpty {
      try visitor.visitSingularStringField(value: self.airdropIdentifier, fieldNumber: 1)
    }
    if !self.address.isEmpty {
      try visitor.visitSingularStringField(value: self.address, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Stride_Claim_QueryClaimRecordRequest, rhs: Stride_Claim_QueryClaimRecordRequest) -> Bool {
    if lhs.airdropIdentifier != rhs.airdropIdentifier {return false}
    if lhs.address != rhs.address {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Stride_Claim_QueryClaimRecordResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".QueryClaimRecordResponse"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "claim_record"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._claimRecord) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._claimRecord {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Stride_Claim_QueryClaimRecordResponse, rhs: Stride_Claim_QueryClaimRecordResponse) -> Bool {
    if lhs._claimRecord != rhs._claimRecord {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Stride_Claim_QueryClaimableForActionRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".QueryClaimableForActionRequest"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "airdrop_identifier"),
    2: .same(proto: "address"),
    3: .same(proto: "action"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.airdropIdentifier) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.address) }()
      case 3: try { try decoder.decodeSingularEnumField(value: &self.action) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.airdropIdentifier.isEmpty {
      try visitor.visitSingularStringField(value: self.airdropIdentifier, fieldNumber: 1)
    }
    if !self.address.isEmpty {
      try visitor.visitSingularStringField(value: self.address, fieldNumber: 2)
    }
    if self.action != .free {
      try visitor.visitSingularEnumField(value: self.action, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Stride_Claim_QueryClaimableForActionRequest, rhs: Stride_Claim_QueryClaimableForActionRequest) -> Bool {
    if lhs.airdropIdentifier != rhs.airdropIdentifier {return false}
    if lhs.address != rhs.address {return false}
    if lhs.action != rhs.action {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Stride_Claim_QueryClaimableForActionResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".QueryClaimableForActionResponse"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "coins"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.coins) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.coins.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.coins, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Stride_Claim_QueryClaimableForActionResponse, rhs: Stride_Claim_QueryClaimableForActionResponse) -> Bool {
    if lhs.coins != rhs.coins {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Stride_Claim_QueryTotalClaimableRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".QueryTotalClaimableRequest"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "airdrop_identifier"),
    2: .same(proto: "address"),
    3: .standard(proto: "include_claimed"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.airdropIdentifier) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.address) }()
      case 3: try { try decoder.decodeSingularBoolField(value: &self.includeClaimed) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.airdropIdentifier.isEmpty {
      try visitor.visitSingularStringField(value: self.airdropIdentifier, fieldNumber: 1)
    }
    if !self.address.isEmpty {
      try visitor.visitSingularStringField(value: self.address, fieldNumber: 2)
    }
    if self.includeClaimed != false {
      try visitor.visitSingularBoolField(value: self.includeClaimed, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Stride_Claim_QueryTotalClaimableRequest, rhs: Stride_Claim_QueryTotalClaimableRequest) -> Bool {
    if lhs.airdropIdentifier != rhs.airdropIdentifier {return false}
    if lhs.address != rhs.address {return false}
    if lhs.includeClaimed != rhs.includeClaimed {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Stride_Claim_QueryTotalClaimableResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".QueryTotalClaimableResponse"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "coins"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.coins) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.coins.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.coins, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Stride_Claim_QueryTotalClaimableResponse, rhs: Stride_Claim_QueryTotalClaimableResponse) -> Bool {
    if lhs.coins != rhs.coins {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Stride_Claim_QueryUserVestingsRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".QueryUserVestingsRequest"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "address"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.address) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.address.isEmpty {
      try visitor.visitSingularStringField(value: self.address, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Stride_Claim_QueryUserVestingsRequest, rhs: Stride_Claim_QueryUserVestingsRequest) -> Bool {
    if lhs.address != rhs.address {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Stride_Claim_QueryUserVestingsResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".QueryUserVestingsResponse"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    3: .standard(proto: "spendable_coins"),
    1: .same(proto: "periods"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.periods) }()
      case 3: try { try decoder.decodeRepeatedMessageField(value: &self.spendableCoins) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.periods.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.periods, fieldNumber: 1)
    }
    if !self.spendableCoins.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.spendableCoins, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Stride_Claim_QueryUserVestingsResponse, rhs: Stride_Claim_QueryUserVestingsResponse) -> Bool {
    if lhs.spendableCoins != rhs.spendableCoins {return false}
    if lhs.periods != rhs.periods {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

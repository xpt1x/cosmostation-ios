// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: kava/evmutil/v1beta1/genesis.proto
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

/// GenesisState defines the evmutil module's genesis state.
struct Kava_Evmutil_V1beta1_GenesisState {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var accounts: [Kava_Evmutil_V1beta1_Account] = []

  /// params defines all the parameters of the module.
  var params: Kava_Evmutil_V1beta1_Params {
    get {return _params ?? Kava_Evmutil_V1beta1_Params()}
    set {_params = newValue}
  }
  /// Returns true if `params` has been explicitly set.
  var hasParams: Bool {return self._params != nil}
  /// Clears the value of `params`. Subsequent reads from it will return its default value.
  mutating func clearParams() {self._params = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _params: Kava_Evmutil_V1beta1_Params? = nil
}

/// BalanceAccount defines an account in the evmutil module.
struct Kava_Evmutil_V1beta1_Account {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var address: Data = Data()

  /// balance indicates the amount of akava owned by the address.
  var balance: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// Params defines the evmutil module params
struct Kava_Evmutil_V1beta1_Params {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// enabled_conversion_pairs defines the list of conversion pairs allowed to be
  /// converted between Kava ERC20 and sdk.Coin
  var enabledConversionPairs: [Kava_Evmutil_V1beta1_ConversionPair] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "kava.evmutil.v1beta1"

extension Kava_Evmutil_V1beta1_GenesisState: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".GenesisState"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "accounts"),
    2: .same(proto: "params"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.accounts) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._params) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.accounts.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.accounts, fieldNumber: 1)
    }
    if let v = self._params {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Kava_Evmutil_V1beta1_GenesisState, rhs: Kava_Evmutil_V1beta1_GenesisState) -> Bool {
    if lhs.accounts != rhs.accounts {return false}
    if lhs._params != rhs._params {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Kava_Evmutil_V1beta1_Account: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Account"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "address"),
    2: .same(proto: "balance"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularBytesField(value: &self.address) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.balance) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.address.isEmpty {
      try visitor.visitSingularBytesField(value: self.address, fieldNumber: 1)
    }
    if !self.balance.isEmpty {
      try visitor.visitSingularStringField(value: self.balance, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Kava_Evmutil_V1beta1_Account, rhs: Kava_Evmutil_V1beta1_Account) -> Bool {
    if lhs.address != rhs.address {return false}
    if lhs.balance != rhs.balance {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Kava_Evmutil_V1beta1_Params: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Params"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    4: .standard(proto: "enabled_conversion_pairs"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 4: try { try decoder.decodeRepeatedMessageField(value: &self.enabledConversionPairs) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.enabledConversionPairs.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.enabledConversionPairs, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Kava_Evmutil_V1beta1_Params, rhs: Kava_Evmutil_V1beta1_Params) -> Bool {
    if lhs.enabledConversionPairs != rhs.enabledConversionPairs {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

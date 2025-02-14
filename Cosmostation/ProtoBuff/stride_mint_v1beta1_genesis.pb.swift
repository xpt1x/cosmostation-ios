// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: stride/mint/v1beta1/genesis.proto
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

/// GenesisState defines the mint module's genesis state.
struct Stride_Mint_V1beta1_GenesisState {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// minter is a space for holding current rewards information.
  var minter: Stride_Mint_V1beta1_Minter {
    get {return _minter ?? Stride_Mint_V1beta1_Minter()}
    set {_minter = newValue}
  }
  /// Returns true if `minter` has been explicitly set.
  var hasMinter: Bool {return self._minter != nil}
  /// Clears the value of `minter`. Subsequent reads from it will return its default value.
  mutating func clearMinter() {self._minter = nil}

  /// params defines all the paramaters of the module.
  var params: Stride_Mint_V1beta1_Params {
    get {return _params ?? Stride_Mint_V1beta1_Params()}
    set {_params = newValue}
  }
  /// Returns true if `params` has been explicitly set.
  var hasParams: Bool {return self._params != nil}
  /// Clears the value of `params`. Subsequent reads from it will return its default value.
  mutating func clearParams() {self._params = nil}

  /// current reduction period start epoch
  var reductionStartedEpoch: Int64 = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _minter: Stride_Mint_V1beta1_Minter? = nil
  fileprivate var _params: Stride_Mint_V1beta1_Params? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "stride.mint.v1beta1"

extension Stride_Mint_V1beta1_GenesisState: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".GenesisState"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "minter"),
    2: .same(proto: "params"),
    3: .standard(proto: "reduction_started_epoch"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._minter) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._params) }()
      case 3: try { try decoder.decodeSingularInt64Field(value: &self.reductionStartedEpoch) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._minter {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if let v = self._params {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if self.reductionStartedEpoch != 0 {
      try visitor.visitSingularInt64Field(value: self.reductionStartedEpoch, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Stride_Mint_V1beta1_GenesisState, rhs: Stride_Mint_V1beta1_GenesisState) -> Bool {
    if lhs._minter != rhs._minter {return false}
    if lhs._params != rhs._params {return false}
    if lhs.reductionStartedEpoch != rhs.reductionStartedEpoch {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

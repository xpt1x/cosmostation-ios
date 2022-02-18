// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: evmos/inflation/v1/inflation.proto
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

/// InflationDistribution defines the distribution in which inflation is
/// allocated through minting on each epoch (staking, incentives, community). It
/// excludes the team vesting distribution, as this is minted once at genesis.
/// The initial InflationDistribution can be calculated from the Evmvos Token
/// Model like this:
/// mintDistribution1 = distribution1 / (1 - teamVestingDistribution)
/// 0.5333333         = 40%           / (1 - 25%)
struct Evmos_Inflation_V1_InflationDistribution {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// staking_rewards defines the proportion of the minted minted_denom that is
  /// to be allocated as staking rewards
  var stakingRewards: String = String()

  /// usage_incentives defines the proportion of the minted minted_denom that is
  /// to be allocated to the incentives module address
  var usageIncentives: String = String()

  /// community_pool defines the proportion of the minted minted_denom that is to
  /// be allocated to the community pool
  var communityPool: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// ExponentialCalculation holds factors to calculate exponential inflation on
/// each period. Calculation reference:
/// periodProvision = exponentialDecay       *  bondingIncentive
/// f(x)            = (a * (1 - r) ^ x + c)  *  (1 + max_variance - bondedRatio *
/// (max_variance / bonding_target))
struct Evmos_Inflation_V1_ExponentialCalculation {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// initial value
  var a: String = String()

  /// reduction factor
  var r: String = String()

  /// long term inflation
  var c: String = String()

  /// bonding target
  var bondingTarget: String = String()

  /// max variance
  var maxVariance: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "evmos.inflation.v1"

extension Evmos_Inflation_V1_InflationDistribution: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".InflationDistribution"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "staking_rewards"),
    2: .standard(proto: "usage_incentives"),
    3: .standard(proto: "community_pool"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.stakingRewards) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.usageIncentives) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.communityPool) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.stakingRewards.isEmpty {
      try visitor.visitSingularStringField(value: self.stakingRewards, fieldNumber: 1)
    }
    if !self.usageIncentives.isEmpty {
      try visitor.visitSingularStringField(value: self.usageIncentives, fieldNumber: 2)
    }
    if !self.communityPool.isEmpty {
      try visitor.visitSingularStringField(value: self.communityPool, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Evmos_Inflation_V1_InflationDistribution, rhs: Evmos_Inflation_V1_InflationDistribution) -> Bool {
    if lhs.stakingRewards != rhs.stakingRewards {return false}
    if lhs.usageIncentives != rhs.usageIncentives {return false}
    if lhs.communityPool != rhs.communityPool {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Evmos_Inflation_V1_ExponentialCalculation: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".ExponentialCalculation"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "a"),
    2: .same(proto: "r"),
    3: .same(proto: "c"),
    4: .standard(proto: "bonding_target"),
    5: .standard(proto: "max_variance"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.a) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.r) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.c) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self.bondingTarget) }()
      case 5: try { try decoder.decodeSingularStringField(value: &self.maxVariance) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.a.isEmpty {
      try visitor.visitSingularStringField(value: self.a, fieldNumber: 1)
    }
    if !self.r.isEmpty {
      try visitor.visitSingularStringField(value: self.r, fieldNumber: 2)
    }
    if !self.c.isEmpty {
      try visitor.visitSingularStringField(value: self.c, fieldNumber: 3)
    }
    if !self.bondingTarget.isEmpty {
      try visitor.visitSingularStringField(value: self.bondingTarget, fieldNumber: 4)
    }
    if !self.maxVariance.isEmpty {
      try visitor.visitSingularStringField(value: self.maxVariance, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Evmos_Inflation_V1_ExponentialCalculation, rhs: Evmos_Inflation_V1_ExponentialCalculation) -> Bool {
    if lhs.a != rhs.a {return false}
    if lhs.r != rhs.r {return false}
    if lhs.c != rhs.c {return false}
    if lhs.bondingTarget != rhs.bondingTarget {return false}
    if lhs.maxVariance != rhs.maxVariance {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

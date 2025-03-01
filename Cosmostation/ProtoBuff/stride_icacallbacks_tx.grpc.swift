//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: stride/icacallbacks/tx.proto
//

//
// Copyright 2018, gRPC Authors All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
import GRPC
import NIO
import SwiftProtobuf


/// Msg defines the Msg service.
///
/// Usage: instantiate `Stride_Icacallbacks_MsgClient`, then call methods of this protocol to make API calls.
internal protocol Stride_Icacallbacks_MsgClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Stride_Icacallbacks_MsgClientInterceptorFactoryProtocol? { get }
}

extension Stride_Icacallbacks_MsgClientProtocol {
  internal var serviceName: String {
    return "stride.icacallbacks.Msg"
  }
}

internal protocol Stride_Icacallbacks_MsgClientInterceptorFactoryProtocol {
}

internal final class Stride_Icacallbacks_MsgClient: Stride_Icacallbacks_MsgClientProtocol {
  internal let channel: GRPCChannel
  internal var defaultCallOptions: CallOptions
  internal var interceptors: Stride_Icacallbacks_MsgClientInterceptorFactoryProtocol?

  /// Creates a client for the stride.icacallbacks.Msg service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  internal init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Stride_Icacallbacks_MsgClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

/// Msg defines the Msg service.
///
/// To build a server, implement a class that conforms to this protocol.
internal protocol Stride_Icacallbacks_MsgProvider: CallHandlerProvider {
  var interceptors: Stride_Icacallbacks_MsgServerInterceptorFactoryProtocol? { get }
}

extension Stride_Icacallbacks_MsgProvider {
  internal var serviceName: Substring { return "stride.icacallbacks.Msg" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  internal func handle(
    method name: Substring,
    context: CallHandlerContext
  ) -> GRPCServerHandlerProtocol? {
    switch name {
    default:
      return nil
    }
  }
}

internal protocol Stride_Icacallbacks_MsgServerInterceptorFactoryProtocol {
}

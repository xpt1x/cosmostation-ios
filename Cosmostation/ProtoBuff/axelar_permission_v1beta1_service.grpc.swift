//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: axelar/permission/v1beta1/service.proto
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


/// Msg defines the gov Msg service.
///
/// Usage: instantiate `Axelar_Permission_V1beta1_MsgClient`, then call methods of this protocol to make API calls.
internal protocol Axelar_Permission_V1beta1_MsgClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Axelar_Permission_V1beta1_MsgClientInterceptorFactoryProtocol? { get }

  func registerController(
    _ request: Axelar_Permission_V1beta1_RegisterControllerRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Axelar_Permission_V1beta1_RegisterControllerRequest, Axelar_Permission_V1beta1_RegisterControllerResponse>

  func deregisterController(
    _ request: Axelar_Permission_V1beta1_DeregisterControllerRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Axelar_Permission_V1beta1_DeregisterControllerRequest, Axelar_Permission_V1beta1_DeregisterControllerResponse>

  func updateGovernanceKey(
    _ request: Axelar_Permission_V1beta1_UpdateGovernanceKeyRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Axelar_Permission_V1beta1_UpdateGovernanceKeyRequest, Axelar_Permission_V1beta1_UpdateGovernanceKeyResponse>
}

extension Axelar_Permission_V1beta1_MsgClientProtocol {
  internal var serviceName: String {
    return "axelar.permission.v1beta1.Msg"
  }

  /// Unary call to RegisterController
  ///
  /// - Parameters:
  ///   - request: Request to send to RegisterController.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func registerController(
    _ request: Axelar_Permission_V1beta1_RegisterControllerRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Axelar_Permission_V1beta1_RegisterControllerRequest, Axelar_Permission_V1beta1_RegisterControllerResponse> {
    return self.makeUnaryCall(
      path: "/axelar.permission.v1beta1.Msg/RegisterController",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeRegisterControllerInterceptors() ?? []
    )
  }

  /// Unary call to DeregisterController
  ///
  /// - Parameters:
  ///   - request: Request to send to DeregisterController.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func deregisterController(
    _ request: Axelar_Permission_V1beta1_DeregisterControllerRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Axelar_Permission_V1beta1_DeregisterControllerRequest, Axelar_Permission_V1beta1_DeregisterControllerResponse> {
    return self.makeUnaryCall(
      path: "/axelar.permission.v1beta1.Msg/DeregisterController",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeDeregisterControllerInterceptors() ?? []
    )
  }

  /// Unary call to UpdateGovernanceKey
  ///
  /// - Parameters:
  ///   - request: Request to send to UpdateGovernanceKey.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func updateGovernanceKey(
    _ request: Axelar_Permission_V1beta1_UpdateGovernanceKeyRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Axelar_Permission_V1beta1_UpdateGovernanceKeyRequest, Axelar_Permission_V1beta1_UpdateGovernanceKeyResponse> {
    return self.makeUnaryCall(
      path: "/axelar.permission.v1beta1.Msg/UpdateGovernanceKey",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeUpdateGovernanceKeyInterceptors() ?? []
    )
  }
}

internal protocol Axelar_Permission_V1beta1_MsgClientInterceptorFactoryProtocol {

  /// - Returns: Interceptors to use when invoking 'registerController'.
  func makeRegisterControllerInterceptors() -> [ClientInterceptor<Axelar_Permission_V1beta1_RegisterControllerRequest, Axelar_Permission_V1beta1_RegisterControllerResponse>]

  /// - Returns: Interceptors to use when invoking 'deregisterController'.
  func makeDeregisterControllerInterceptors() -> [ClientInterceptor<Axelar_Permission_V1beta1_DeregisterControllerRequest, Axelar_Permission_V1beta1_DeregisterControllerResponse>]

  /// - Returns: Interceptors to use when invoking 'updateGovernanceKey'.
  func makeUpdateGovernanceKeyInterceptors() -> [ClientInterceptor<Axelar_Permission_V1beta1_UpdateGovernanceKeyRequest, Axelar_Permission_V1beta1_UpdateGovernanceKeyResponse>]
}

internal final class Axelar_Permission_V1beta1_MsgClient: Axelar_Permission_V1beta1_MsgClientProtocol {
  internal let channel: GRPCChannel
  internal var defaultCallOptions: CallOptions
  internal var interceptors: Axelar_Permission_V1beta1_MsgClientInterceptorFactoryProtocol?

  /// Creates a client for the axelar.permission.v1beta1.Msg service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  internal init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Axelar_Permission_V1beta1_MsgClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

/// Query defines the gRPC querier service.
///
/// Usage: instantiate `Axelar_Permission_V1beta1_QueryClient`, then call methods of this protocol to make API calls.
internal protocol Axelar_Permission_V1beta1_QueryClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Axelar_Permission_V1beta1_QueryClientInterceptorFactoryProtocol? { get }

  func governanceKey(
    _ request: Axelar_Permission_V1beta1_QueryGovernanceKeyRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Axelar_Permission_V1beta1_QueryGovernanceKeyRequest, Axelar_Permission_V1beta1_QueryGovernanceKeyResponse>
}

extension Axelar_Permission_V1beta1_QueryClientProtocol {
  internal var serviceName: String {
    return "axelar.permission.v1beta1.Query"
  }

  /// GovernanceKey returns multisig governance key
  ///
  /// - Parameters:
  ///   - request: Request to send to GovernanceKey.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func governanceKey(
    _ request: Axelar_Permission_V1beta1_QueryGovernanceKeyRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Axelar_Permission_V1beta1_QueryGovernanceKeyRequest, Axelar_Permission_V1beta1_QueryGovernanceKeyResponse> {
    return self.makeUnaryCall(
      path: "/axelar.permission.v1beta1.Query/GovernanceKey",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGovernanceKeyInterceptors() ?? []
    )
  }
}

internal protocol Axelar_Permission_V1beta1_QueryClientInterceptorFactoryProtocol {

  /// - Returns: Interceptors to use when invoking 'governanceKey'.
  func makeGovernanceKeyInterceptors() -> [ClientInterceptor<Axelar_Permission_V1beta1_QueryGovernanceKeyRequest, Axelar_Permission_V1beta1_QueryGovernanceKeyResponse>]
}

internal final class Axelar_Permission_V1beta1_QueryClient: Axelar_Permission_V1beta1_QueryClientProtocol {
  internal let channel: GRPCChannel
  internal var defaultCallOptions: CallOptions
  internal var interceptors: Axelar_Permission_V1beta1_QueryClientInterceptorFactoryProtocol?

  /// Creates a client for the axelar.permission.v1beta1.Query service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  internal init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Axelar_Permission_V1beta1_QueryClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

/// Msg defines the gov Msg service.
///
/// To build a server, implement a class that conforms to this protocol.
internal protocol Axelar_Permission_V1beta1_MsgProvider: CallHandlerProvider {
  var interceptors: Axelar_Permission_V1beta1_MsgServerInterceptorFactoryProtocol? { get }

  func registerController(request: Axelar_Permission_V1beta1_RegisterControllerRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Axelar_Permission_V1beta1_RegisterControllerResponse>

  func deregisterController(request: Axelar_Permission_V1beta1_DeregisterControllerRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Axelar_Permission_V1beta1_DeregisterControllerResponse>

  func updateGovernanceKey(request: Axelar_Permission_V1beta1_UpdateGovernanceKeyRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Axelar_Permission_V1beta1_UpdateGovernanceKeyResponse>
}

extension Axelar_Permission_V1beta1_MsgProvider {
  internal var serviceName: Substring { return "axelar.permission.v1beta1.Msg" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  internal func handle(
    method name: Substring,
    context: CallHandlerContext
  ) -> GRPCServerHandlerProtocol? {
    switch name {
    case "RegisterController":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Axelar_Permission_V1beta1_RegisterControllerRequest>(),
        responseSerializer: ProtobufSerializer<Axelar_Permission_V1beta1_RegisterControllerResponse>(),
        interceptors: self.interceptors?.makeRegisterControllerInterceptors() ?? [],
        userFunction: self.registerController(request:context:)
      )

    case "DeregisterController":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Axelar_Permission_V1beta1_DeregisterControllerRequest>(),
        responseSerializer: ProtobufSerializer<Axelar_Permission_V1beta1_DeregisterControllerResponse>(),
        interceptors: self.interceptors?.makeDeregisterControllerInterceptors() ?? [],
        userFunction: self.deregisterController(request:context:)
      )

    case "UpdateGovernanceKey":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Axelar_Permission_V1beta1_UpdateGovernanceKeyRequest>(),
        responseSerializer: ProtobufSerializer<Axelar_Permission_V1beta1_UpdateGovernanceKeyResponse>(),
        interceptors: self.interceptors?.makeUpdateGovernanceKeyInterceptors() ?? [],
        userFunction: self.updateGovernanceKey(request:context:)
      )

    default:
      return nil
    }
  }
}

internal protocol Axelar_Permission_V1beta1_MsgServerInterceptorFactoryProtocol {

  /// - Returns: Interceptors to use when handling 'registerController'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeRegisterControllerInterceptors() -> [ServerInterceptor<Axelar_Permission_V1beta1_RegisterControllerRequest, Axelar_Permission_V1beta1_RegisterControllerResponse>]

  /// - Returns: Interceptors to use when handling 'deregisterController'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeDeregisterControllerInterceptors() -> [ServerInterceptor<Axelar_Permission_V1beta1_DeregisterControllerRequest, Axelar_Permission_V1beta1_DeregisterControllerResponse>]

  /// - Returns: Interceptors to use when handling 'updateGovernanceKey'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeUpdateGovernanceKeyInterceptors() -> [ServerInterceptor<Axelar_Permission_V1beta1_UpdateGovernanceKeyRequest, Axelar_Permission_V1beta1_UpdateGovernanceKeyResponse>]
}
/// Query defines the gRPC querier service.
///
/// To build a server, implement a class that conforms to this protocol.
internal protocol Axelar_Permission_V1beta1_QueryProvider: CallHandlerProvider {
  var interceptors: Axelar_Permission_V1beta1_QueryServerInterceptorFactoryProtocol? { get }

  /// GovernanceKey returns multisig governance key
  func governanceKey(request: Axelar_Permission_V1beta1_QueryGovernanceKeyRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Axelar_Permission_V1beta1_QueryGovernanceKeyResponse>
}

extension Axelar_Permission_V1beta1_QueryProvider {
  internal var serviceName: Substring { return "axelar.permission.v1beta1.Query" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  internal func handle(
    method name: Substring,
    context: CallHandlerContext
  ) -> GRPCServerHandlerProtocol? {
    switch name {
    case "GovernanceKey":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Axelar_Permission_V1beta1_QueryGovernanceKeyRequest>(),
        responseSerializer: ProtobufSerializer<Axelar_Permission_V1beta1_QueryGovernanceKeyResponse>(),
        interceptors: self.interceptors?.makeGovernanceKeyInterceptors() ?? [],
        userFunction: self.governanceKey(request:context:)
      )

    default:
      return nil
    }
  }
}

internal protocol Axelar_Permission_V1beta1_QueryServerInterceptorFactoryProtocol {

  /// - Returns: Interceptors to use when handling 'governanceKey'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeGovernanceKeyInterceptors() -> [ServerInterceptor<Axelar_Permission_V1beta1_QueryGovernanceKeyRequest, Axelar_Permission_V1beta1_QueryGovernanceKeyResponse>]
}

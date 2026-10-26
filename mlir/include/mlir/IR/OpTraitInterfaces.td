//===- OpTraitInterfaces.td - Interfaces for op traits -----*- tablegen -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file contains a set of interfaces and traits that can be used to define
// properties of symbol and symbol table operations.
//
//===----------------------------------------------------------------------===//

#ifndef MLIR_IR_OPTRAITINTERFACES
#define MLIR_IR_OPTRAITINTERFACES

include "mlir/IR/OpBase.td"

def ConditionallyCommutative : OpInterface<"ConditionallyCommutativeOpInterface"> {
  let description = [{
    This interface describes an operation which is conditionally commutative,
    rather than unconditionally commutative such as when using OpTrait::IsCommutative.
  }];
  let cppNamespace = "::mlir";
  let methods = [
    InterfaceMethod<
      /*desc=*/[{
        Returns true if the specific operation in question is commutative.
      }],
      /*retTy=*/"bool",
      /*methodName=*/"isCommutative",
      /*args=*/(ins),
      /*methodBody=*/"",
      /*defaultImplementation=*/[{ return false; }]
    >
  ];
}

def ConditionallyInvolution : OpInterface<"ConditionallyInvolutionOpInterface"> {
  let description = [{
    This interface describes an operation which is conditionally an involution,
    rather than unconditionally an involution such as when using OpTrait::IsInvolution.
  }];
  let cppNamespace = "::mlir";
  let methods = [
    InterfaceMethod<
      /*desc=*/[{
        Returns true if the specific operation in question is an involution.
      }],
      /*retTy=*/"bool",
      /*methodName=*/"isInvolution",
      /*args=*/(ins),
      /*methodBody=*/"",
      /*defaultImplementation=*/[{ return false; }]
    >
  ];
}

def ConditionallyIdempotent : OpInterface<"ConditionallyIdempotentOpInterface"> {
  let description = [{
    This interface describes an operation which is conditionally idempotent,
    rather than unconditionally idempotent such as when using OpTrait::IsIdempotent.
  }];
  let cppNamespace = "::mlir";
  let methods = [
    InterfaceMethod<
      /*desc=*/[{
        Returns true if the specific operation in question is idempotent.
      }],
      /*retTy=*/"bool",
      /*methodName=*/"isIdempotent",
      /*args=*/(ins),
      /*methodBody=*/"",
      /*defaultImplementation=*/[{ return false; }]
    >
  ];
}

#endif // MLIR_IR_OPTRAITINTERFACES

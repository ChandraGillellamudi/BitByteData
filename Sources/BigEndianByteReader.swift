// Copyright (c) 2021 Timofey Solomko
// Licensed under MIT License
//
// See LICENSE for license information

import Foundation

/// A type that contains functions for reading `Data` byte-by-byte in the Big Endian order.
public final class BigEndianByteReader: ByteReader {

    /// Size of the `data` (in bytes).
    public let size: Int

    /// Data which is being read.
    public let data: Data

    /// Offset to the byte in `data` which will be read next.
    public var offset: Int

    /// Creates an instance for reading bytes from `data`.
    public init(data: Data) {
        self.size = data.count
        self.data = data
        self.offset = data.startIndex
    }

    /**
     Reads byte and returns it, advancing by one position.

     - Precondition: There MUST be enough data left.
     */
    public func byte() -> UInt8 {
        return { (data: Data, offset: inout Int) -> UInt8 in
            defer { offset += 1 }
            return data[offset]
        } (self.data, &self.offset)
    }

    /**
     Reads `count` bytes and returns them as an array of `UInt8`, advancing by `count` positions.

     - Precondition: Parameter `count` MUST not be less than 0.
     - Precondition: There MUST be enough data left.
     */
    public func bytes(count: Int) -> [UInt8] {
        precondition(count >= 0)
        return { (data: Data, offset: inout Int) -> [UInt8] in
            defer { offset += count }
            return data[offset..<offset + count].toByteArray(count)
        } (self.data, &self.offset)
    }

    /**
     Reads 8 bytes and returns them as a `UInt64` number, advancing by 8 positions.

     - Precondition: There MUST be enough data left.
     */
    public func uint64() -> UInt64 {
        return { (data: Data, offset: inout Int) -> UInt64 in
            defer { offset += 8 }
            return data[offset..<offset + 8].toU64().byteSwapped
        } (self.data, &self.offset)
    }

    /**
     Reads `fromBytes` bytes and returns them as an `UInt64` number, advancing by `fromBytes` positions.

     - Note: If it is known that `fromBytes` is exactly 8, then consider using `uint64()` function (without argument),
     since it has better performance in this situation.
     - Precondition: Parameter `fromBits` MUST be from `0..8` range, i.e. it MUST not exceed maximum possible amount of
     bytes that `UInt64` type can represent.
     - Precondition: There MUST be enough data left.
     */
    public func uint64(fromBytes count: Int) -> UInt64 {
        precondition(0...8 ~= count)
        return { (data: Data, offset: inout Int) -> UInt64 in
            var result = 0 as UInt64
            for i in stride(from: count - 1, through: 0, by: -1) {
                result += UInt64(truncatingIfNeeded: data[offset]) << (8 * i)
                offset += 1
            }
            return result
        } (self.data, &self.offset)
    }

    /**
     Reads 4 bytes and returns them as a `UInt32` number, advancing by 4 positions.

     - Precondition: There MUST be enough data left.
     */
    public func uint32() -> UInt32 {
        return { (data: Data, offset: inout Int) -> UInt32 in
            defer { offset += 4 }
            return data[offset..<offset + 4].toU32().byteSwapped
        } (self.data, &self.offset)
    }

    /**
     Reads `fromBytes` bytes and returns them as an `UInt32` number, advancing by `fromBytes` positions.

     - Note: If it is known that `fromBytes` is exactly 4, then consider using `uint32()` function (without argument),
     since it has better performance in this situation.
     - Precondition: Parameter `fromBits` MUST be from `0..4` range, i.e. it MUST not exceed maximum possible amount of
     bytes that `UInt32` type can represent.
     - Precondition: There MUST be enough data left.
     */
    public func uint32(fromBytes count: Int) -> UInt32 {
        precondition(0...4 ~= count)
        return { (data: Data, offset: inout Int) -> UInt32 in
            var result = 0 as UInt32
            for i in stride(from: count - 1, through: 0, by: -1) {
                result += UInt32(truncatingIfNeeded: data[offset]) << (8 * i)
                offset += 1
            }
            return result
        } (self.data, &self.offset)
    }

    /**
     Reads 2 bytes and returns them as a `UInt16` number, advancing by 2 positions.

     - Precondition: There MUST be enough data left.
     */
    public func uint16() -> UInt16 {
        return { (data: Data, offset: inout Int) -> UInt16 in
            defer { offset += 2 }
            return data[offset..<offset + 2].toU16().byteSwapped
        } (self.data, &self.offset)
    }

    /**
     Reads `fromBytes` bytes and returns them as an `UInt16` number, advancing by `fromBytes` positions.

     - Note: If it is known that `fromBytes` is exactly 2, then consider using `uint16()` function (without argument),
     since it has better performance in this situation.
     - Precondition: Parameter `fromBits` MUST be from `0..2` range, i.e. it MUST not exceed maximum possible amount of
     bytes that `UInt16` type can represent.
     - Precondition: There MUST be enough data left.
     */
    public func uint16(fromBytes count: Int) -> UInt16 {
        precondition(0...2 ~= count)
        return { (data: Data, offset: inout Int) -> UInt16 in
            var result = 0 as UInt16
            for i in stride(from: count - 1, through: 0, by: -1) {
                result += UInt16(truncatingIfNeeded: data[offset]) << (8 * i)
                offset += 1
            }
            return result
        } (self.data, &self.offset)
    }

}

#if !canImport(ObjectiveC)
import XCTest

extension BigEndianByteReaderBenchmarks {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__BigEndianByteReaderBenchmarks = [
        ("testByte", testByte),
        ("testBytes", testBytes),
        ("testIntFromBytes", testIntFromBytes),
        ("testUint16", testUint16),
        ("testUint16_FB", testUint16_FB),
        ("testUint16FromBytes", testUint16FromBytes),
        ("testUint32", testUint32),
        ("testUint32_FB", testUint32_FB),
        ("testUint32FromBytes", testUint32FromBytes),
        ("testUint64", testUint64),
        ("testUint64_FB", testUint64_FB),
        ("testUint64FromBytes", testUint64FromBytes),
    ]
}

extension LittleEndianByteReaderBenchmarks {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__LittleEndianByteReaderBenchmarks = [
        ("testByte", testByte),
        ("testBytes", testBytes),
        ("testIntFromBytes", testIntFromBytes),
        ("testUint16", testUint16),
        ("testUint16_FB", testUint16_FB),
        ("testUint16FromBytes", testUint16FromBytes),
        ("testUint32", testUint32),
        ("testUint32_FB", testUint32_FB),
        ("testUint32FromBytes", testUint32FromBytes),
        ("testUint64", testUint64),
        ("testUint64_FB", testUint64_FB),
        ("testUint64FromBytes", testUint64FromBytes),
    ]
}

extension LsbBitReaderBenchmarks {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__LsbBitReaderBenchmarks = [
        ("testAdvance", testAdvance),
        ("testAdvanceRealistic", testAdvanceRealistic),
        ("testBit", testBit),
        ("testBits", testBits),
        ("testByteFromBits", testByteFromBits),
        ("testIntFromBits", testIntFromBits),
        ("testUint16FromBits", testUint16FromBits),
        ("testUint32FromBits", testUint32FromBits),
        ("testUint64FromBits", testUint64FromBits),
    ]
}

extension LsbBitReaderByteBenchmarks {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__LsbBitReaderByteBenchmarks = [
        ("testByte", testByte),
        ("testBytes", testBytes),
        ("testIntFromBytes", testIntFromBytes),
        ("testUint16", testUint16),
        ("testUint16_FB", testUint16_FB),
        ("testUint16FromBytes", testUint16FromBytes),
        ("testUint32", testUint32),
        ("testUint32_FB", testUint32_FB),
        ("testUint32FromBytes", testUint32FromBytes),
        ("testUint64", testUint64),
        ("testUint64_FB", testUint64_FB),
        ("testUint64FromBytes", testUint64FromBytes),
    ]
}

extension LsbBitWriterBenchmarks {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__LsbBitWriterBenchmarks = [
        ("testAppendByte", testAppendByte),
        ("testWriteBit", testWriteBit),
        ("testWriteNumberBitsCount", testWriteNumberBitsCount),
        ("testWriteUnsignedNumberBitsCount", testWriteUnsignedNumberBitsCount),
    ]
}

extension MsbBitReaderBenchmarks {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__MsbBitReaderBenchmarks = [
        ("testAdvance", testAdvance),
        ("testAdvanceRealistic", testAdvanceRealistic),
        ("testBit", testBit),
        ("testBits", testBits),
        ("testByteFromBits", testByteFromBits),
        ("testIntFromBits", testIntFromBits),
        ("testUint16FromBits", testUint16FromBits),
        ("testUint32FromBits", testUint32FromBits),
        ("testUint64FromBits", testUint64FromBits),
    ]
}

extension MsbBitReaderByteBenchmarks {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__MsbBitReaderByteBenchmarks = [
        ("testByte", testByte),
        ("testBytes", testBytes),
        ("testIntFromBytes", testIntFromBytes),
        ("testUint16", testUint16),
        ("testUint16_FB", testUint16_FB),
        ("testUint16FromBytes", testUint16FromBytes),
        ("testUint32", testUint32),
        ("testUint32_FB", testUint32_FB),
        ("testUint32FromBytes", testUint32FromBytes),
        ("testUint64", testUint64),
        ("testUint64_FB", testUint64_FB),
        ("testUint64FromBytes", testUint64FromBytes),
    ]
}

extension MsbBitWriterBenchmarks {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__MsbBitWriterBenchmarks = [
        ("testAppendByte", testAppendByte),
        ("testWriteBit", testWriteBit),
        ("testWriteNumberBitsCount", testWriteNumberBitsCount),
        ("testWriteUnsignedNumberBitsCount", testWriteUnsignedNumberBitsCount),
    ]
}

public func __allTests() -> [XCTestCaseEntry] {
    return [
        testCase(BigEndianByteReaderBenchmarks.__allTests__BigEndianByteReaderBenchmarks),
        testCase(LittleEndianByteReaderBenchmarks.__allTests__LittleEndianByteReaderBenchmarks),
        testCase(LsbBitReaderBenchmarks.__allTests__LsbBitReaderBenchmarks),
        testCase(LsbBitReaderByteBenchmarks.__allTests__LsbBitReaderByteBenchmarks),
        testCase(LsbBitWriterBenchmarks.__allTests__LsbBitWriterBenchmarks),
        testCase(MsbBitReaderBenchmarks.__allTests__MsbBitReaderBenchmarks),
        testCase(MsbBitReaderByteBenchmarks.__allTests__MsbBitReaderByteBenchmarks),
        testCase(MsbBitWriterBenchmarks.__allTests__MsbBitWriterBenchmarks),
    ]
}
#endif

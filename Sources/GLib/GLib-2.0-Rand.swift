import CGLib

// MARK: - Rand Record

/// The `RandProtocol` protocol exposes the methods and properties of an underlying `GRand` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Rand`.
/// Alternatively, use `RandRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The GRand struct is an opaque data structure. It should only be
/// accessed through the g_rand_* functions.
public protocol RandProtocol {
    /// Untyped pointer to the underlying `GRand` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GRand` instance.
    var _ptr: UnsafeMutablePointer<GRand> { get }
}

/// The `RandRef` type acts as a lightweight Swift reference to an underlying `GRand` instance.
/// It exposes methods that can operate on this data type through `RandProtocol` conformance.
/// Use `RandRef` only as an `unowned` reference to an existing `GRand` instance.
///
/// The GRand struct is an opaque data structure. It should only be
/// accessed through the g_rand_* functions.
public struct RandRef: RandProtocol {
    /// Untyped pointer to the underlying `GRand` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension RandRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GRand>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `RandProtocol`
    init<T: RandProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RandProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RandProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RandProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RandProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RandProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new random number generator initialized with `seed`.
    static func newWith(seed: UInt32) -> RandRef! {
        let rv = g_rand_new_with_seed(guint32(seed))
        return rv.map { RandRef(cast($0)) }
    }

    /// Creates a new random number generator initialized with `seed`.
    static func newWith(seedArray seed: UnsafePointer<UInt32>, seedLength seed_length: CUnsignedInt) -> RandRef! {
        let rv = g_rand_new_with_seed_array(cast(seed), guint(seed_length))
        return rv.map { RandRef(cast($0)) }
    }
}

/// The `Rand` type acts as an owner of an underlying `GRand` instance.
/// It provides the methods that can operate on this data type through `RandProtocol` conformance.
/// Use `Rand` as a strong reference or owner of a `GRand` instance.
///
/// The GRand struct is an opaque data structure. It should only be
/// accessed through the g_rand_* functions.
open class Rand: RandProtocol {
    /// Untyped pointer to the underlying `GRand` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `Rand` instance.
    public init(_ op: UnsafeMutablePointer<GRand>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `RandProtocol`
    /// `GRand` does not allow reference counting.
    public convenience init<T: RandProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GRand, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GRand`.
    deinit {
        // no reference counting for GRand, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RandProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GRand.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RandProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GRand.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RandProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GRand.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RandProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GRand>(opaquePointer))
    }


    /// Creates a new random number generator initialized with `seed`.
    public static func newWith(seed: UInt32) -> Rand! {
        let rv = g_rand_new_with_seed(guint32(seed))
        return rv.map { Rand(cast($0)) }
    }

    /// Creates a new random number generator initialized with `seed`.
    public static func newWith(seedArray seed: UnsafePointer<UInt32>, seedLength seed_length: CUnsignedInt) -> Rand! {
        let rv = g_rand_new_with_seed_array(cast(seed), guint(seed_length))
        return rv.map { Rand(cast($0)) }
    }

}

// MARK: - no Rand properties

// MARK: - no signals


public extension RandProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GRand` instance.
    var _ptr: UnsafeMutablePointer<GRand> { return ptr.assumingMemoryBound(to: GRand.self) }

    /// Copies a `GRand` into a new one with the same exact state as before.
    /// This way you can take a snapshot of the random number generator for
    /// replaying later.
    func copy() -> UnsafeMutablePointer<GRand>! {
        let rv = g_rand_copy(cast(_ptr))
        return cast(rv)
    }

    /// Returns the next random `gdouble` from `rand_` equally distributed over
    /// the range [0..1).
    func CDouble() -> gdouble {
        let rv = g_rand_double(cast(_ptr))
        return rv
    }

    /// Returns the next random `gdouble` from `rand_` equally distributed over
    /// the range [`begin.`.`end`).
    func doubleRange(begin: gdouble, end: gdouble) -> gdouble {
        let rv = g_rand_double_range(cast(_ptr), begin, end)
        return rv
    }

    /// Frees the memory allocated for the `GRand`.
    func free() {
        g_rand_free(cast(_ptr))
    
    }

    /// Returns the next random `guint32` from `rand_` equally distributed over
    /// the range [0..2^32-1].
    func CInt() -> UInt32 {
        let rv = g_rand_int(cast(_ptr))
        return UInt32(rv)
    }

    /// Returns the next random `gint32` from `rand_` equally distributed over
    /// the range [`begin.`.`end`-1].
    func intRange(begin: Int32, end: Int32) -> Int32 {
        let rv = g_rand_int_range(cast(_ptr), gint32(begin), gint32(end))
        return Int32(rv)
    }

    /// Sets the seed for the random number generator `GRand` to `seed`.
    func set(seed: UInt32) {
        g_rand_set_seed(cast(_ptr), guint32(seed))
    
    }

    /// Initializes the random number generator by an array of longs.
    /// Array can be of arbitrary size, though only the first 624 values
    /// are taken.  This function is useful if you have many low entropy
    /// seeds, or if you require more then 32 bits of actual entropy for
    /// your application.
    func setSeedArray(seed: UnsafePointer<UInt32>, seedLength seed_length: CUnsignedInt) {
        g_rand_set_seed_array(cast(_ptr), cast(seed), guint(seed_length))
    
    }
}




import CGLib

// MARK: - Bytes Record

/// The `BytesProtocol` protocol exposes the methods and properties of an underlying `GBytes` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Bytes`.
/// Alternatively, use `BytesRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A simple refcounted data type representing an immutable sequence of zero or
/// more bytes from an unspecified origin.
/// 
/// The purpose of a `GBytes` is to keep the memory region that it holds
/// alive for as long as anyone holds a reference to the bytes.  When
/// the last reference count is dropped, the memory is released. Multiple
/// unrelated callers can use byte data in the `GBytes` without coordinating
/// their activities, resting assured that the byte data will not change or
/// move while they hold a reference.
/// 
/// A `GBytes` can come from many different origins that may have
/// different procedures for freeing the memory region.  Examples are
/// memory from g_malloc(), from memory slices, from a `GMappedFile` or
/// memory from other allocators.
/// 
/// `GBytes` work well as keys in `GHashTable`. Use g_bytes_equal() and
/// g_bytes_hash() as parameters to g_hash_table_new() or g_hash_table_new_full().
/// `GBytes` can also be used as keys in a `GTree` by passing the g_bytes_compare()
/// function to g_tree_new().
/// 
/// The data pointed to by this bytes must not be modified. For a mutable
/// array of bytes see `GByteArray`. Use g_bytes_unref_to_array() to create a
/// mutable array for a `GBytes` sequence. To create an immutable `GBytes` from
/// a mutable `GByteArray`, use the g_byte_array_free_to_bytes() function.
public protocol BytesProtocol {
    /// Untyped pointer to the underlying `GBytes` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GBytes` instance.
    var bytes_ptr: UnsafeMutablePointer<GBytes> { get }
}

/// The `BytesRef` type acts as a lightweight Swift reference to an underlying `GBytes` instance.
/// It exposes methods that can operate on this data type through `BytesProtocol` conformance.
/// Use `BytesRef` only as an `unowned` reference to an existing `GBytes` instance.
///
/// A simple refcounted data type representing an immutable sequence of zero or
/// more bytes from an unspecified origin.
/// 
/// The purpose of a `GBytes` is to keep the memory region that it holds
/// alive for as long as anyone holds a reference to the bytes.  When
/// the last reference count is dropped, the memory is released. Multiple
/// unrelated callers can use byte data in the `GBytes` without coordinating
/// their activities, resting assured that the byte data will not change or
/// move while they hold a reference.
/// 
/// A `GBytes` can come from many different origins that may have
/// different procedures for freeing the memory region.  Examples are
/// memory from g_malloc(), from memory slices, from a `GMappedFile` or
/// memory from other allocators.
/// 
/// `GBytes` work well as keys in `GHashTable`. Use g_bytes_equal() and
/// g_bytes_hash() as parameters to g_hash_table_new() or g_hash_table_new_full().
/// `GBytes` can also be used as keys in a `GTree` by passing the g_bytes_compare()
/// function to g_tree_new().
/// 
/// The data pointed to by this bytes must not be modified. For a mutable
/// array of bytes see `GByteArray`. Use g_bytes_unref_to_array() to create a
/// mutable array for a `GBytes` sequence. To create an immutable `GBytes` from
/// a mutable `GByteArray`, use the g_byte_array_free_to_bytes() function.
public struct BytesRef: BytesProtocol {
    /// Untyped pointer to the underlying `GBytes` instance.
    /// For type-safe access, use the generated, typed pointer `bytes_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension BytesRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GBytes>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `BytesProtocol`
    init<T: BytesProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BytesProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BytesProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BytesProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BytesProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BytesProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GBytes` from `data`.
    /// 
    /// `data` is copied. If `size` is 0, `data` may be `nil`.
    init( data: gconstpointer, size: Int) {
        let rv = g_bytes_new(cast(data), gsize(size))
        self.init(cast(rv))
    }

    /// Creates a new `GBytes` from static data.
    /// 
    /// `data` must be static (ie: never modified or freed). It may be `nil` if `size`
    /// is 0.
    init(static_ data: gconstpointer, size: Int) {
        let rv = g_bytes_new_static(cast(data), gsize(size))
        self.init(cast(rv))
    }

    /// Creates a new `GBytes` from `data`.
    /// 
    /// After this call, `data` belongs to the bytes and may no longer be
    /// modified by the caller.  g_free() will be called on `data` when the
    /// bytes is no longer in use. Because of this `data` must have been created by
    /// a call to g_malloc(), g_malloc0() or g_realloc() or by one of the many
    /// functions that wrap these calls (such as g_new(), g_strdup(), etc).
    /// 
    /// For creating `GBytes` with memory from other allocators, see
    /// g_bytes_new_with_free_func().
    /// 
    /// `data` may be `nil` if `size` is 0.
    init(take data: UnsafeMutableRawPointer, size: Int) {
        let rv = g_bytes_new_take(cast(data), gsize(size))
        self.init(cast(rv))
    }

    /// Creates a `GBytes` from `data`.
    /// 
    /// When the last reference is dropped, `free_func` will be called with the
    /// `user_data` argument.
    /// 
    /// `data` must not be modified after this call is made until `free_func` has
    /// been called to indicate that the bytes is no longer in use.
    /// 
    /// `data` may be `nil` if `size` is 0.
    init(freeFunc data: gconstpointer, size: Int, freeFunc free_func: @escaping DestroyNotify, userData user_data: UnsafeMutableRawPointer) {
        let rv = g_bytes_new_with_free_func(cast(data), gsize(size), free_func, cast(user_data))
        self.init(cast(rv))
    }
    /// Creates a new `GBytes` from static data.
    /// 
    /// `data` must be static (ie: never modified or freed). It may be `nil` if `size`
    /// is 0.
    static func newStatic(static_ data: gconstpointer, size: Int) -> BytesRef! {
        let rv = g_bytes_new_static(cast(data), gsize(size))
        return rv.map { BytesRef(cast($0)) }
    }

    /// Creates a new `GBytes` from `data`.
    /// 
    /// After this call, `data` belongs to the bytes and may no longer be
    /// modified by the caller.  g_free() will be called on `data` when the
    /// bytes is no longer in use. Because of this `data` must have been created by
    /// a call to g_malloc(), g_malloc0() or g_realloc() or by one of the many
    /// functions that wrap these calls (such as g_new(), g_strdup(), etc).
    /// 
    /// For creating `GBytes` with memory from other allocators, see
    /// g_bytes_new_with_free_func().
    /// 
    /// `data` may be `nil` if `size` is 0.
    static func new(take data: UnsafeMutableRawPointer, size: Int) -> BytesRef! {
        let rv = g_bytes_new_take(cast(data), gsize(size))
        return rv.map { BytesRef(cast($0)) }
    }

    /// Creates a `GBytes` from `data`.
    /// 
    /// When the last reference is dropped, `free_func` will be called with the
    /// `user_data` argument.
    /// 
    /// `data` must not be modified after this call is made until `free_func` has
    /// been called to indicate that the bytes is no longer in use.
    /// 
    /// `data` may be `nil` if `size` is 0.
    static func newWith(freeFunc data: gconstpointer, size: Int, freeFunc free_func: @escaping DestroyNotify, userData user_data: UnsafeMutableRawPointer) -> BytesRef! {
        let rv = g_bytes_new_with_free_func(cast(data), gsize(size), free_func, cast(user_data))
        return rv.map { BytesRef(cast($0)) }
    }
}

/// The `Bytes` type acts as a reference-counted owner of an underlying `GBytes` instance.
/// It provides the methods that can operate on this data type through `BytesProtocol` conformance.
/// Use `Bytes` as a strong reference or owner of a `GBytes` instance.
///
/// A simple refcounted data type representing an immutable sequence of zero or
/// more bytes from an unspecified origin.
/// 
/// The purpose of a `GBytes` is to keep the memory region that it holds
/// alive for as long as anyone holds a reference to the bytes.  When
/// the last reference count is dropped, the memory is released. Multiple
/// unrelated callers can use byte data in the `GBytes` without coordinating
/// their activities, resting assured that the byte data will not change or
/// move while they hold a reference.
/// 
/// A `GBytes` can come from many different origins that may have
/// different procedures for freeing the memory region.  Examples are
/// memory from g_malloc(), from memory slices, from a `GMappedFile` or
/// memory from other allocators.
/// 
/// `GBytes` work well as keys in `GHashTable`. Use g_bytes_equal() and
/// g_bytes_hash() as parameters to g_hash_table_new() or g_hash_table_new_full().
/// `GBytes` can also be used as keys in a `GTree` by passing the g_bytes_compare()
/// function to g_tree_new().
/// 
/// The data pointed to by this bytes must not be modified. For a mutable
/// array of bytes see `GByteArray`. Use g_bytes_unref_to_array() to create a
/// mutable array for a `GBytes` sequence. To create an immutable `GBytes` from
/// a mutable `GByteArray`, use the g_byte_array_free_to_bytes() function.
open class Bytes: BytesProtocol {
    /// Untyped pointer to the underlying `GBytes` instance.
    /// For type-safe access, use the generated, typed pointer `bytes_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `Bytes` instance.
    public init(_ op: UnsafeMutablePointer<GBytes>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `BytesProtocol`
    /// Will retain `GBytes`.
    public convenience init<T: BytesProtocol>(_ other: T) {
        self.init(cast(other.bytes_ptr))
        g_bytes_ref(cast(bytes_ptr))
    }

    /// Releases the underlying `GBytes` instance using `g_bytes_unref`.
    deinit {
        g_bytes_unref(cast(bytes_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BytesProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GBytes.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BytesProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GBytes.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BytesProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GBytes.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BytesProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GBytes>(opaquePointer))
    }

    /// Creates a new `GBytes` from `data`.
    /// 
    /// `data` is copied. If `size` is 0, `data` may be `nil`.
    public convenience init( data: gconstpointer, size: Int) {
        let rv = g_bytes_new(cast(data), gsize(size))
        self.init(cast(rv))
    }

    /// Creates a new `GBytes` from static data.
    /// 
    /// `data` must be static (ie: never modified or freed). It may be `nil` if `size`
    /// is 0.
    public convenience init(static_ data: gconstpointer, size: Int) {
        let rv = g_bytes_new_static(cast(data), gsize(size))
        self.init(cast(rv))
    }

    /// Creates a new `GBytes` from `data`.
    /// 
    /// After this call, `data` belongs to the bytes and may no longer be
    /// modified by the caller.  g_free() will be called on `data` when the
    /// bytes is no longer in use. Because of this `data` must have been created by
    /// a call to g_malloc(), g_malloc0() or g_realloc() or by one of the many
    /// functions that wrap these calls (such as g_new(), g_strdup(), etc).
    /// 
    /// For creating `GBytes` with memory from other allocators, see
    /// g_bytes_new_with_free_func().
    /// 
    /// `data` may be `nil` if `size` is 0.
    public convenience init(take data: UnsafeMutableRawPointer, size: Int) {
        let rv = g_bytes_new_take(cast(data), gsize(size))
        self.init(cast(rv))
    }

    /// Creates a `GBytes` from `data`.
    /// 
    /// When the last reference is dropped, `free_func` will be called with the
    /// `user_data` argument.
    /// 
    /// `data` must not be modified after this call is made until `free_func` has
    /// been called to indicate that the bytes is no longer in use.
    /// 
    /// `data` may be `nil` if `size` is 0.
    public convenience init(freeFunc data: gconstpointer, size: Int, freeFunc free_func: @escaping DestroyNotify, userData user_data: UnsafeMutableRawPointer) {
        let rv = g_bytes_new_with_free_func(cast(data), gsize(size), free_func, cast(user_data))
        self.init(cast(rv))
    }

    /// Creates a new `GBytes` from static data.
    /// 
    /// `data` must be static (ie: never modified or freed). It may be `nil` if `size`
    /// is 0.
    public static func newStatic(static_ data: gconstpointer, size: Int) -> Bytes! {
        let rv = g_bytes_new_static(cast(data), gsize(size))
        return rv.map { Bytes(cast($0)) }
    }

    /// Creates a new `GBytes` from `data`.
    /// 
    /// After this call, `data` belongs to the bytes and may no longer be
    /// modified by the caller.  g_free() will be called on `data` when the
    /// bytes is no longer in use. Because of this `data` must have been created by
    /// a call to g_malloc(), g_malloc0() or g_realloc() or by one of the many
    /// functions that wrap these calls (such as g_new(), g_strdup(), etc).
    /// 
    /// For creating `GBytes` with memory from other allocators, see
    /// g_bytes_new_with_free_func().
    /// 
    /// `data` may be `nil` if `size` is 0.
    public static func new(take data: UnsafeMutableRawPointer, size: Int) -> Bytes! {
        let rv = g_bytes_new_take(cast(data), gsize(size))
        return rv.map { Bytes(cast($0)) }
    }

    /// Creates a `GBytes` from `data`.
    /// 
    /// When the last reference is dropped, `free_func` will be called with the
    /// `user_data` argument.
    /// 
    /// `data` must not be modified after this call is made until `free_func` has
    /// been called to indicate that the bytes is no longer in use.
    /// 
    /// `data` may be `nil` if `size` is 0.
    public static func newWith(freeFunc data: gconstpointer, size: Int, freeFunc free_func: @escaping DestroyNotify, userData user_data: UnsafeMutableRawPointer) -> Bytes! {
        let rv = g_bytes_new_with_free_func(cast(data), gsize(size), free_func, cast(user_data))
        return rv.map { Bytes(cast($0)) }
    }

}

// MARK: - no Bytes properties

// MARK: - no signals


public extension BytesProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GBytes` instance.
    var bytes_ptr: UnsafeMutablePointer<GBytes> { return ptr.assumingMemoryBound(to: GBytes.self) }

    /// Compares the two `GBytes` values.
    /// 
    /// This function can be used to sort GBytes instances in lexicographical order.
    /// 
    /// If `bytes1` and `bytes2` have different length but the shorter one is a
    /// prefix of the longer one then the shorter one is considered to be less than
    /// the longer one. Otherwise the first byte where both differ is used for
    /// comparison. If `bytes1` has a smaller value at that position it is
    /// considered less, otherwise greater than `bytes2`.
    func compare(bytes2: BytesProtocol) -> CInt {
        let rv = g_bytes_compare(cast(bytes_ptr), cast(bytes2.ptr))
        return CInt(rv)
    }

    /// Compares the two `GBytes` values being pointed to and returns
    /// `true` if they are equal.
    /// 
    /// This function can be passed to g_hash_table_new() as the `key_equal_func`
    /// parameter, when using non-`nil` `GBytes` pointers as keys in a `GHashTable`.
    func equal(bytes2: BytesProtocol) -> Bool {
        let rv = g_bytes_equal(cast(bytes_ptr), cast(bytes2.ptr))
        return Bool(rv != 0)
    }

    /// Get the byte data in the `GBytes`. This data should not be modified.
    /// 
    /// This function will always return the same pointer for a given `GBytes`.
    /// 
    /// `nil` may be returned if `size` is 0. This is not guaranteed, as the `GBytes`
    /// may represent an empty string with `data` non-`nil` and `size` as 0. `nil` will
    /// not be returned if `size` is non-zero.
    func getData(size: UnsafeMutablePointer<Int>) -> gconstpointer! {
        let rv = g_bytes_get_data(cast(bytes_ptr), cast(size))
        return cast(rv)
    }

    /// Get the size of the byte data in the `GBytes`.
    /// 
    /// This function will always return the same value for a given `GBytes`.
    func getSize() -> Int {
        let rv = g_bytes_get_size(cast(bytes_ptr))
        return Int(rv)
    }

    /// Creates an integer hash code for the byte data in the `GBytes`.
    /// 
    /// This function can be passed to g_hash_table_new() as the `key_hash_func`
    /// parameter, when using non-`nil` `GBytes` pointers as keys in a `GHashTable`.
    func hash() -> CUnsignedInt {
        let rv = g_bytes_hash(cast(bytes_ptr))
        return CUnsignedInt(rv)
    }

    /// Creates a `GBytes` which is a subsection of another `GBytes`. The `offset` +
    /// `length` may not be longer than the size of `bytes`.
    /// 
    /// A reference to `bytes` will be held by the newly created `GBytes` until
    /// the byte data is no longer needed.
    /// 
    /// Since 2.56, if `offset` is 0 and `length` matches the size of `bytes`, then
    /// `bytes` will be returned with the reference count incremented by 1. If `bytes`
    /// is a slice of another `GBytes`, then the resulting `GBytes` will reference
    /// the same `GBytes` instead of `bytes`. This allows consumers to simplify the
    /// usage of `GBytes` when asynchronously writing to streams.
    func newFromBytes(offset: Int, length: Int) -> UnsafeMutablePointer<GBytes>! {
        let rv = g_bytes_new_from_bytes(cast(bytes_ptr), gsize(offset), gsize(length))
        return cast(rv)
    }

    /// Increase the reference count on `bytes`.
    func ref() -> UnsafeMutablePointer<GBytes>! {
        let rv = g_bytes_ref(cast(bytes_ptr))
        return cast(rv)
    }

    /// Releases a reference on `bytes`.  This may result in the bytes being
    /// freed. If `bytes` is `nil`, it will return immediately.
    func unref() {
        g_bytes_unref(cast(bytes_ptr))
    
    }

    /// Unreferences the bytes, and returns a new mutable `GByteArray` containing
    /// the same byte data.
    /// 
    /// As an optimization, the byte data is transferred to the array without copying
    /// if this was the last reference to bytes and bytes was created with
    /// g_bytes_new(), g_bytes_new_take() or g_byte_array_free_to_bytes(). In all
    /// other cases the data is copied.
    func unrefToArray() -> UnsafeMutablePointer<GByteArray>! {
        let rv = g_bytes_unref_to_array(cast(bytes_ptr))
        return cast(rv)
    }

    /// Unreferences the bytes, and returns a pointer the same byte data
    /// contents.
    /// 
    /// As an optimization, the byte data is returned without copying if this was
    /// the last reference to bytes and bytes was created with g_bytes_new(),
    /// g_bytes_new_take() or g_byte_array_free_to_bytes(). In all other cases the
    /// data is copied.
    func unrefToData(size: UnsafeMutablePointer<Int>) -> UnsafeMutableRawPointer! {
        let rv = g_bytes_unref_to_data(cast(bytes_ptr), cast(size))
        return cast(rv)
    }

    /// Computes the checksum for a binary `data`. This is a
    /// convenience wrapper for g_checksum_new(), g_checksum_get_string()
    /// and g_checksum_free().
    /// 
    /// The hexadecimal string returned will be in lower case.
    func computeChecksumForBytes(checksumType checksum_type: ChecksumType) -> String! {
        let rv = g_compute_checksum_for_bytes(checksum_type, cast(bytes_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Computes the HMAC for a binary `data`. This is a
    /// convenience wrapper for g_hmac_new(), g_hmac_get_string()
    /// and g_hmac_unref().
    /// 
    /// The hexadecimal string returned will be in lower case.
    func computeHmacForBytes(digestType digest_type: ChecksumType, data: BytesProtocol) -> String! {
        let rv = g_compute_hmac_for_bytes(digest_type, cast(bytes_ptr), cast(data.ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }
    /// Get the size of the byte data in the `GBytes`.
    /// 
    /// This function will always return the same value for a given `GBytes`.
    var size: Int {
        /// Get the size of the byte data in the `GBytes`.
        /// 
        /// This function will always return the same value for a given `GBytes`.
        get {
            let rv = g_bytes_get_size(cast(bytes_ptr))
            return Int(rv)
        }
    }
}



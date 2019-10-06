import CGLib

// MARK: - VariantIter Record

/// The `VariantIterProtocol` protocol exposes the methods and properties of an underlying `GVariantIter` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `VariantIter`.
/// Alternatively, use `VariantIterRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GVariantIter` is an opaque data structure and can only be accessed
/// using the following functions.
public protocol VariantIterProtocol {
    /// Untyped pointer to the underlying `GVariantIter` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GVariantIter` instance.
    var _ptr: UnsafeMutablePointer<GVariantIter> { get }
}

/// The `VariantIterRef` type acts as a lightweight Swift reference to an underlying `GVariantIter` instance.
/// It exposes methods that can operate on this data type through `VariantIterProtocol` conformance.
/// Use `VariantIterRef` only as an `unowned` reference to an existing `GVariantIter` instance.
///
/// `GVariantIter` is an opaque data structure and can only be accessed
/// using the following functions.
public struct VariantIterRef: VariantIterProtocol {
    /// Untyped pointer to the underlying `GVariantIter` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension VariantIterRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GVariantIter>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `VariantIterProtocol`
    init<T: VariantIterProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantIterProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantIterProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantIterProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantIterProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantIterProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `VariantIter` type acts as an owner of an underlying `GVariantIter` instance.
/// It provides the methods that can operate on this data type through `VariantIterProtocol` conformance.
/// Use `VariantIter` as a strong reference or owner of a `GVariantIter` instance.
///
/// `GVariantIter` is an opaque data structure and can only be accessed
/// using the following functions.
open class VariantIter: VariantIterProtocol {
    /// Untyped pointer to the underlying `GVariantIter` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `VariantIter` instance.
    public init(_ op: UnsafeMutablePointer<GVariantIter>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `VariantIterProtocol`
    /// `GVariantIter` does not allow reference counting.
    public convenience init<T: VariantIterProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GVariantIter, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GVariantIter`.
    deinit {
        // no reference counting for GVariantIter, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantIterProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GVariantIter.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantIterProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GVariantIter.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantIterProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GVariantIter.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VariantIterProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GVariantIter>(opaquePointer))
    }



}

// MARK: - no VariantIter properties

// MARK: - no signals


public extension VariantIterProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GVariantIter` instance.
    var _ptr: UnsafeMutablePointer<GVariantIter> { return ptr.assumingMemoryBound(to: GVariantIter.self) }

    /// Creates a new heap-allocated `GVariantIter` to iterate over the
    /// container that was being iterated over by `iter`.  Iteration begins on
    /// the new iterator from the current position of the old iterator but
    /// the two copies are independent past that point.
    /// 
    /// Use `g_variant_iter_free()` to free the return value when you no longer
    /// need it.
    /// 
    /// A reference is taken to the container that `iter` is iterating over
    /// and will be releated only when `g_variant_iter_free()` is called.
    func copy() -> UnsafeMutablePointer<GVariantIter>! {
        let rv = g_variant_iter_copy(cast(_ptr))
        return cast(rv)
    }

    /// Frees a heap-allocated `GVariantIter`.  Only call this function on
    /// iterators that were returned by `g_variant_iter_new()` or
    /// `g_variant_iter_copy()`.
    func free() {
        g_variant_iter_free(cast(_ptr))
    
    }

    /// Initialises (without allocating) a `GVariantIter`.  `iter` may be
    /// completely uninitialised prior to this call; its old value is
    /// ignored.
    /// 
    /// The iterator remains valid for as long as `value` exists, and need not
    /// be freed in any way.
    func init_(value: VariantProtocol) -> Int {
        let rv = g_variant_iter_init(cast(_ptr), cast(value.ptr))
        return Int(rv)
    }


    // *** loop() is not available because it has a varargs (...) parameter!


    /// Queries the number of child items in the container that we are
    /// iterating over.  This is the total number of items -- not the number
    /// of items remaining.
    /// 
    /// This function might be useful for preallocation of arrays.
    func nChildren() -> Int {
        let rv = g_variant_iter_n_children(cast(_ptr))
        return Int(rv)
    }


    // *** next() is not available because it has a varargs (...) parameter!


    /// Gets the next item in the container.  If no more items remain then
    /// `nil` is returned.
    /// 
    /// Use `g_variant_unref()` to drop your reference on the return value when
    /// you no longer need it.
    /// 
    /// Here is an example for iterating with `g_variant_iter_next_value()`:
    /// (C Language Example):
    /// ```C
    ///   // recursively iterate a container
    ///   void
    ///   iterate_container_recursive (GVariant *container)
    ///   {
    ///     GVariantIter iter;
    ///     GVariant *child;
    /// 
    ///     g_variant_iter_init (&iter, container);
    ///     while ((child = g_variant_iter_next_value (&iter)))
    ///       {
    ///         g_print ("type '%s'\n", g_variant_get_type_string (child));
    /// 
    ///         if (g_variant_is_container (child))
    ///           iterate_container_recursive (child);
    /// 
    ///         g_variant_unref (child);
    ///       }
    ///   }
    /// ```
    /// 
    func nextValue() -> UnsafeMutablePointer<GVariant>! {
        let rv = g_variant_iter_next_value(cast(_ptr))
        return cast(rv)
    }
}




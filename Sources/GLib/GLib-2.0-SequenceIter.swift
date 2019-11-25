import CGLib

// MARK: - SequenceIter Record

/// The `SequenceIterProtocol` protocol exposes the methods and properties of an underlying `GSequenceIter` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SequenceIter`.
/// Alternatively, use `SequenceIterRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GSequenceIter` struct is an opaque data type representing an
/// iterator pointing into a `GSequence`.
public protocol SequenceIterProtocol {
    /// Untyped pointer to the underlying `GSequenceIter` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GSequenceIter` instance.
    var _ptr: UnsafeMutablePointer<GSequenceIter> { get }
}

/// The `SequenceIterRef` type acts as a lightweight Swift reference to an underlying `GSequenceIter` instance.
/// It exposes methods that can operate on this data type through `SequenceIterProtocol` conformance.
/// Use `SequenceIterRef` only as an `unowned` reference to an existing `GSequenceIter` instance.
///
/// The `GSequenceIter` struct is an opaque data type representing an
/// iterator pointing into a `GSequence`.
public struct SequenceIterRef: SequenceIterProtocol {
    /// Untyped pointer to the underlying `GSequenceIter` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension SequenceIterRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GSequenceIter>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SequenceIterProtocol`
    init<T: SequenceIterProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SequenceIterProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SequenceIterProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SequenceIterProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SequenceIterProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SequenceIterProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `SequenceIter` type acts as an owner of an underlying `GSequenceIter` instance.
/// It provides the methods that can operate on this data type through `SequenceIterProtocol` conformance.
/// Use `SequenceIter` as a strong reference or owner of a `GSequenceIter` instance.
///
/// The `GSequenceIter` struct is an opaque data type representing an
/// iterator pointing into a `GSequence`.
open class SequenceIter: SequenceIterProtocol {
    /// Untyped pointer to the underlying `GSequenceIter` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `SequenceIter` instance.
    public init(_ op: UnsafeMutablePointer<GSequenceIter>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `SequenceIterProtocol`
    /// `GSequenceIter` does not allow reference counting.
    public convenience init<T: SequenceIterProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GSequenceIter, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GSequenceIter`.
    deinit {
        // no reference counting for GSequenceIter, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SequenceIterProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GSequenceIter.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SequenceIterProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GSequenceIter.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SequenceIterProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GSequenceIter.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SequenceIterProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GSequenceIter>(opaquePointer))
    }



}

// MARK: - no SequenceIter properties

// MARK: - no signals


public extension SequenceIterProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSequenceIter` instance.
    var _ptr: UnsafeMutablePointer<GSequenceIter> { return ptr.assumingMemoryBound(to: GSequenceIter.self) }

    /// Returns a negative number if `a` comes before `b`, 0 if they are equal,
    /// and a positive number if `a` comes after `b`.
    /// 
    /// The `a` and `b` iterators must point into the same sequence.
    func compare(b: SequenceIterProtocol) -> CInt {
        let rv = g_sequence_iter_compare(cast(_ptr), cast(b.ptr))
        return CInt(rv)
    }

    /// Returns the position of `iter`
    func getPosition() -> CInt {
        let rv = g_sequence_iter_get_position(cast(_ptr))
        return CInt(rv)
    }

    /// Returns the `GSequence` that `iter` points into.
    func getSequence() -> UnsafeMutablePointer<GSequence>! {
        let rv = g_sequence_iter_get_sequence(cast(_ptr))
        return cast(rv)
    }

    /// Returns the `GSequenceIter` which is `delta` positions away from `iter`.
    /// If `iter` is closer than -`delta` positions to the beginning of the sequence,
    /// the begin iterator is returned. If `iter` is closer than `delta` positions
    /// to the end of the sequence, the end iterator is returned.
    func move(delta: CInt) -> UnsafeMutablePointer<GSequenceIter>! {
        let rv = g_sequence_iter_move(cast(_ptr), gint(delta))
        return cast(rv)
    }

    /// Returns an iterator pointing to the next position after `iter`.
    /// If `iter` is the end iterator, the end iterator is returned.
    func next() -> UnsafeMutablePointer<GSequenceIter>! {
        let rv = g_sequence_iter_next(cast(_ptr))
        return cast(rv)
    }

    /// Returns an iterator pointing to the previous position before `iter`.
    /// If `iter` is the begin iterator, the begin iterator is returned.
    func prev() -> UnsafeMutablePointer<GSequenceIter>! {
        let rv = g_sequence_iter_prev(cast(_ptr))
        return cast(rv)
    }

    /// Returns the data that `iter` points to.
    func sequenceGet() -> UnsafeMutableRawPointer! {
        let rv = g_sequence_get(cast(_ptr))
        return cast(rv)
    }

    /// Inserts a new item just before the item pointed to by `iter`.
    func sequenceInsertBefore(data: UnsafeMutableRawPointer) -> UnsafeMutablePointer<GSequenceIter>! {
        let rv = g_sequence_insert_before(cast(_ptr), cast(data))
        return cast(rv)
    }

    /// Moves the item pointed to by `src` to the position indicated by `dest`.
    /// After calling this function `dest` will point to the position immediately
    /// after `src`. It is allowed for `src` and `dest` to point into different
    /// sequences.
    func sequenceMove(dest: SequenceIterProtocol) {
        g_sequence_move(cast(_ptr), cast(dest.ptr))
    
    }

    /// Inserts the (`begin`, `end`) range at the destination pointed to by `dest`.
    /// The `begin` and `end` iters must point into the same sequence. It is
    /// allowed for `dest` to point to a different sequence than the one pointed
    /// into by `begin` and `end`.
    /// 
    /// If `dest` is `nil`, the range indicated by `begin` and `end` is
    /// removed from the sequence. If `dest` points to a place within
    /// the (`begin`, `end`) range, the range does not move.
    func sequenceMoveRange(begin: SequenceIterProtocol, end: SequenceIterProtocol) {
        g_sequence_move_range(cast(_ptr), cast(begin.ptr), cast(end.ptr))
    
    }

    /// Finds an iterator somewhere in the range (`begin`, `end`). This
    /// iterator will be close to the middle of the range, but is not
    /// guaranteed to be exactly in the middle.
    /// 
    /// The `begin` and `end` iterators must both point to the same sequence
    /// and `begin` must come before or be equal to `end` in the sequence.
    func sequenceRangeGetMidpoint(end: SequenceIterProtocol) -> UnsafeMutablePointer<GSequenceIter>! {
        let rv = g_sequence_range_get_midpoint(cast(_ptr), cast(end.ptr))
        return cast(rv)
    }

    /// Removes the item pointed to by `iter`. It is an error to pass the
    /// end iterator to this function.
    /// 
    /// If the sequence has a data destroy function associated with it, this
    /// function is called on the data for the removed item.
    func sequenceRemove() {
        g_sequence_remove(cast(_ptr))
    
    }

    /// Removes all items in the (`begin`, `end`) range.
    /// 
    /// If the sequence has a data destroy function associated with it, this
    /// function is called on the data for the removed items.
    func sequenceRemoveRange(end: SequenceIterProtocol) {
        g_sequence_remove_range(cast(_ptr), cast(end.ptr))
    
    }

    /// Changes the data for the item pointed to by `iter` to be `data`. If
    /// the sequence has a data destroy function associated with it, that
    /// function is called on the existing data that `iter` pointed to.
    func sequenceSet(data: UnsafeMutableRawPointer) {
        g_sequence_set(cast(_ptr), cast(data))
    
    }

    /// Swaps the items pointed to by `a` and `b`. It is allowed for `a` and `b`
    /// to point into difference sequences.
    func sequenceSwap(b: SequenceIterProtocol) {
        g_sequence_swap(cast(_ptr), cast(b.ptr))
    
    }
    /// Returns whether `iter` is the begin iterator
    var isBegin: Bool {
        /// Returns whether `iter` is the begin iterator
        get {
            let rv = g_sequence_iter_is_begin(cast(_ptr))
            return Bool(rv != 0)
        }
    }

    /// Returns whether `iter` is the end iterator
    var isEnd: Bool {
        /// Returns whether `iter` is the end iterator
        get {
            let rv = g_sequence_iter_is_end(cast(_ptr))
            return Bool(rv != 0)
        }
    }

    /// Returns the position of `iter`
    var position: CInt {
        /// Returns the position of `iter`
        get {
            let rv = g_sequence_iter_get_position(cast(_ptr))
            return CInt(rv)
        }
    }

    /// Returns the `GSequence` that `iter` points into.
    var sequence: UnsafeMutablePointer<GSequence>! {
        /// Returns the `GSequence` that `iter` points into.
        get {
            let rv = g_sequence_iter_get_sequence(cast(_ptr))
            return cast(rv)
        }
    }
}



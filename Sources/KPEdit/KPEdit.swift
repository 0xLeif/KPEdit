// MARK: Public Key Path Objects

public class KPRObject<T,E> {
    public var obj: T
    public var path: ReferenceWritableKeyPath<T, E>
    
    public init(obj: T, path: ReferenceWritableKeyPath<T, E>) {
        self.obj = obj
        self.path = path
    }
}

public class KPObject<T,E> {
    public var obj: T
    public var path: WritableKeyPath<T, E>
    
    public init(obj: T, path: WritableKeyPath<T, E>) {
        self.obj = obj
        self.path = path
    }
}

// MARK: Interal Magic

@discardableResult
func magic<T,E>(obj: inout T, path: ReferenceWritableKeyPath<T, E>, value: E) -> T {
    obj[keyPath: path] = value
    return obj
}

@discardableResult
func magic<T,E>(obj: inout T, path: WritableKeyPath<T, E>, value: E) -> T {
    obj[keyPath: path] = value
    return obj
}

// MARK: Public Operators

@discardableResult
public func +<T,E>(obj: T, path: ReferenceWritableKeyPath<T, E>) -> KPRObject<T, E> {
    return KPRObject(obj: obj, path: path)
}

@discardableResult
public func +<T,E>(obj: T, path: WritableKeyPath<T, E>) -> KPObject<T, E> {
    return KPObject(obj: obj, path: path)
}

@discardableResult
public func +<T,E>(obj: KPRObject<T,E>, path: ReferenceWritableKeyPath<T, E>)  -> KPRObject<T, E> {
    obj.path = path
    return obj
}

@discardableResult
public func +<T,E>(obj: KPObject<T,E>, path: WritableKeyPath<T, E>)  -> KPObject<T, E> {
    obj.path = path
    return obj
}

@discardableResult
public func -<T,E>(obj: KPObject<T,E>, value: E) -> T {
    var o = obj.obj
    magic(obj: &o, path: obj.path, value: value)
    return o
}

@discardableResult
public func -<T,E>(obj: KPRObject<T,E>, value: E) -> T {
    var o = obj.obj
    magic(obj: &o, path: obj.path, value: value)
    return o
}

"""
    sq_diff(x, y)

Calculate `x^2 - y^2` with more precision than default when x ≈ y.
"""
function sq_diff(x::T1, y::T2) where {T1, T2}
    T = promote_type(T1, T2)
    return (T(x) + T(y)) * (T(x) - T(y))
end

"""
    sq_diff_sqrt(x, y)

Calculate `sqrt(x^2 - y^2)` with more precision than default when x ≈ y.
"""
function sq_diff_sqrt(x::T1, y::T2) where {T1, T2}
    T = promote_type(T1, T2)
    return sqrt(T(x) + T(y)) * sqrt(T(x) - T(y))
end

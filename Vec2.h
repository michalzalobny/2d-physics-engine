#ifndef VEC2_H
#define VEC2_H

struct Vec2 {
    float x;
    float y;

    Vec2();
    Vec2(float x, float y);
    
    ~Vec2() = default; // Default destructor from C++11

    void Add(const Vec2& v);                 // v1.Add(v2)
    void Sub(const Vec2& v);                 // v1.Sub(v2)
    void Scale(const float n);               // v1.Scale(n)
    // const at the end of the function means that the function does not modify the object (v1)
    // const before float means that the function does not modify the parameter (n)
    Vec2 Rotate(const float angle) const;    // v1.Rotate(angle), 

    float Magnitude() const;                 // v1.Magnitude()
    float MagnitudeSquared() const;          // v1.MagnitudeSquared()

    Vec2& Normalize();                       // v1.Normalize()
    Vec2 UnitVector() const;                 // v1.UnitVector()
    Vec2 Normal() const;                     // n = v1.Normal()

    float Dot(const Vec2& v) const;          // v1.Dot(v2)
    float Cross(const Vec2& v) const;        // v1.Cross(v2)
};

#endif
namespace Abc.Aids;

public static class TypeExtension {
    public static Type ToUnderlying(Type t) 
        => t == null ? null : Nullable.GetUnderlyingType(t) ?? t;
    
    public static bool IsBool(this Type t) 
        => ToUnderlying(t) == typeof(bool);
        
    public static bool IsDate(this Type t) => t == typeof(DateTime) || t == typeof(DateOnly);
    public static bool IsString(this Type t) => t == typeof(string);
    public static bool IsNumeric(this Type t) {
        t = ToUnderlying(t);   
         return t == typeof(byte) || t == typeof(sbyte) ||
               t == typeof(short) || t == typeof(ushort) ||
               t == typeof(int) || t == typeof(uint) ||
               t == typeof(long) || t == typeof(ulong) ||
               t == typeof(float) || t == typeof(double) ||
               t == typeof(decimal);
    }
}
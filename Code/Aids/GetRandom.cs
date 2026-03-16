using System;
using System.Collections.Generic;
using System.Text;

using System;

namespace Abc.Aids;

public static class GetRandom {
    private static readonly Random r = Random.Shared;

    public static int Int32(int min = int.MinValue, int max = int.MaxValue) {
        if (min == max) return min;
        if (min > max) (min, max) = (max, min);
        return r.Next(min, max); 
    }

    public static long Int64(long min = long.MinValue, long max = long.MaxValue) {
        if (min == max) return min;
        if (min > max) (min, max) = (max, min);
        return r.NextInt64(min, max); 
    }

    public static double Double(double min = double.MinValue, double max = double.MaxValue) {
        if (min == max) return min;
        if (min > max) (min, max) = (max, min);
        return min + r.NextDouble() * (max - min); 
    }

    public static char Char(string? alphabet = null) {
        const string defaultAlphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
        var set = string.IsNullOrEmpty(alphabet) ? defaultAlphabet : alphabet!;
        return set[r.Next(0, set.Length)];
    }

    public static string String(int minLength = 1, int maxLength = 32, string? alphabet = null) {
        if (minLength < 0) minLength = 0;
        if (minLength == maxLength) {
            maxLength = minLength;
        } else if (minLength > maxLength) {
            (minLength, maxLength) = (maxLength, minLength);
        }

        var length = (minLength == maxLength)
            ? minLength
            : r.Next(minLength, maxLength); 

        if (length == 0) return string.Empty;

        const string defaultAlphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
        var set = string.IsNullOrEmpty(alphabet) ? defaultAlphabet : alphabet!;
        var chars = new char[length];
        for (int i = 0; i < length; i++) chars[i] = set[r.Next(0, set.Length)];
        return new string(chars);
    }

    public static Guid Guid() => System.Guid.NewGuid();


    //    Int8, Int16, UInt8, UInt16, UInt32, UInt64, Decimal, Float
    //     bool, DateTime, TimeSpan



}
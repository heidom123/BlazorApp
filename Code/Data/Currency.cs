using Abc.Aids;
using Abc.Data.Common;

namespace Abc.Data;
public sealed class Currency : NamedEntity {
    [Random(3, 3)] public string NumericCode { get; set; } = "";
    [Random(2, 4, "QWERTY")] public string MajorUnitSymbol { get; set; } = "";
    [Random(1, 1, "qwerty")] public string MinorUnitSymbol { get; set; } = "";
    [Random(1, 10)] public double RatioOfMinorUnit { get; set; }
    public bool IsIsoCurrency { get; set; }
}
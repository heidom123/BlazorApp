using Abc.Aids;
using Abc.Data.Common;

namespace Abc.Data;
public sealed class Currency : NamedEntity {
    [Random(3, 3)] public string NumericCode { get; set; } = "";
    [Random(1, 5)] public string MajorUnitSymbol { get; set; } = "";
    [Random(1, 5)] public string MinorUnitSymbol { get; set; } = "";
    [Random(1, 10)] public double RatioOfMinorUnit { get; set; }
    [Random(0, 1)] public bool IsIsoCurrency { get; set; }
}
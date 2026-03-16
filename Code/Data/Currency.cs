using Abc.Data.Common;

namespace Abc.Data;
    public abstract class Currency : NamedEntity {
    public string NumericCode { get; set; }
    public string MajorUnitSymbol { get; set; }
    public string MinorUnitSymbol { get; set; }
    public double RatioOfMinorUnit { get; set; }
    public bool IsIsoCurrency { get; set; }
}
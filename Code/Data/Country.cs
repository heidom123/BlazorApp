using Abc.Aids;
using Abc.Data.Common;

namespace Abc.Data;

public class Country : NamedEntity {
    [Random(5, 15)] public string OfficialName { get; set; } = "";
    [Random(5, 15)] public string NativeName { get; set; } = "";
    [Random(3, 5)] public string NumericCode { get; set; } = "";
    bool IsIsoCountry { get; set; }
    bool IsLoyaltyProgram { get; set; }
    [Random(2, 5)] public string IsoCode { get; set; } = "";
    public IEnumerable<CountryCurrency> Currencies { get; set; } = [];
}
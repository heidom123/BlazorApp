using Abc.Aids;
using Abc.Data.Common;

namespace Abc.Data;

public class Money : BaseEntity {
    [Random(4, 6)] public decimal Amount { get; set; }
    public Guid? CurrencyId { get; set; }
    public Currency Currency { get; set; }
}

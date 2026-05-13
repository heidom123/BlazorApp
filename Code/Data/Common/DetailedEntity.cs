using Abc.Aids;

namespace Abc.Data.Common;

public abstract class DetailedEntity : BaseEntity
{
    [Random(5, 10)] public virtual string Details { get; set; } = "";
}


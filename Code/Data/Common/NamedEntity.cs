using Abc.Aids;

namespace Abc.Data.Common;

public abstract class NamedEntity : DetailedEntity
{
    [Random(5,11)]public virtual string Name { get; set; } = "";
    [Random(3, 4, "ABCDEFGH")] public virtual string Code { get; set; } = "";
}


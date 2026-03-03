using System.ComponentModel.DataAnnotations;

namespace Abc.Data;

public class Currency {
    public int Id { get; set; }
    [Required]
    [StringLength(3, MinimumLength = 3)]
    [RegularExpression(@"^[A-Z]{3}$")]
    public string Code { get; set; }
}


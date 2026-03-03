using System.ComponentModel.DataAnnotations;

namespace Abc.Data;

public class Country {
    public int Id { get; set; }
    [Required]
    [StringLength(100)]
    public string Name { get; set; }
}


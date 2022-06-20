using System.ComponentModel.DataAnnotations;

namespace SanRafael.Models
{
    public class Marca
    {
        [Key]
        public int MarcaId { get; set; }

        [Required(ErrorMessage = "El campo {0} es requerido.")]
        [StringLength(64, MinimumLength = 1, ErrorMessage = "Debe de contener mínimo {2} y máximo {10} caracteres.")]
        [RegularExpression(@"[\w\s\u00f1\u00d1\u0028\u0029\u005B\u005DáéíóúÁÉÍÓÚ.:,-]*",
         ErrorMessage = "Caracteres inválidos. Solo se permiten letras, números y los siguientes caracteres: ( ) , . : - _")]
        public string Nombre { get; set; }
    }
}

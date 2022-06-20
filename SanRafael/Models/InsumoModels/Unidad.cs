using System.ComponentModel.DataAnnotations;

namespace SanRafael.Models.InsumoModels
{
    public class Unidad
    {
        public int Id { get; set; }

        [Required]
        [RegularExpression(@"[\w\s\u00f1\u00d1\u0028\u0029\u005B\u005DáéíóúÁÉÍÓÚ.:,-]*",
         ErrorMessage = "Caracteres inválidos. Solo se permiten letras, números y los siguientes caracteres: ( ) , . : - _")]
        public UnidadDeMedida Nombre { get; set; }

        [RegularExpression(@"[\w\s\u00f1\u00d1\u0028\u0029\u005B\u005DáéíóúÁÉÍÓÚ.:,-]*",
         ErrorMessage = "Caracteres inválidos. Solo se permiten letras, números y los siguientes caracteres: ( ) , . : - _")]
        public string Simbolo { get; set; }
        public UnidadDeMedida Grupo { get; set; }
        public int UnidadBase { get; set; }
    }

    public enum UnidadDeMedida {
        Kilogramo,
        Gramo,
        Litro,
        Mililitro,
        Rollo,
        Pieza
    }
}

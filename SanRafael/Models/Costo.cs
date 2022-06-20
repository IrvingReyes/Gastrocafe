using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace SanRafael.Models
{
    public class Costo
    {
        [Key]
        [Required]
        public int Id { get; set; }

        [Display(Name = "Nombre")]
        [Required(ErrorMessage = "El campo de {0} es requerido.")]
        [StringLength(64, MinimumLength = 1, ErrorMessage = "Debe de contener mínimo {2} y máximo {1} caracteres.")]
        [RegularExpression(@"[\w\s\u00f1\u00d1\u0028\u0029\u005B\u005DáéíóúÁÉÍÓÚ.:,-]*",
         ErrorMessage = "Caracteres inválidos. Solo se permiten letras, números y los siguientes caracteres: ( ) , . : - _")]
        public string Nombre { get; set; }

        [Display(Name = "Descripción")]
        [Required(ErrorMessage = "El campo de {0} es requerido.")]
        [RegularExpression(@"[\w\s\u00f1\u00d1\u0028\u0029\u005B\u005DáéíóúÁÉÍÓÚ.:,-]*",
         ErrorMessage = "Caracteres inválidos. Solo se permiten letras, números y los siguientes caracteres: ( ) , . : - _")]
        public string Descripcion { get; set; }

        [Display(Name = "Periodicidad")]
        [Required(ErrorMessage = "El campo de {0} es requerido.")]
        [RegularExpression(@"[\w\s\u00f1\u00d1\u0028\u0029\u005B\u005DáéíóúÁÉÍÓÚ.:,-]*",
         ErrorMessage = "Caracteres inválidos. Solo se permiten letras, números y los siguientes caracteres: ( ) , . : - _")]
        public string Periodicidad { get; set; }

        [Display(Name = "Tipo")]
        [Required(ErrorMessage = "El campo de {0} es requerido.")]
        [RegularExpression(@"[\w\s\u00f1\u00d1\u0028\u0029\u005B\u005DáéíóúÁÉÍÓÚ.:,-]*",
         ErrorMessage = "Caracteres inválidos. Solo se permiten letras, números y los siguientes caracteres: ( ) , . : - _")]
        public string Tipo { get; set; }

        [Display(Name = "Monto")]
        [Required(ErrorMessage = "El campo de {0} es requerido.")]
        [DataType(DataType.Currency)]
        [Range(1, int.MaxValue, ErrorMessage = "El valor debe ser mayor a 0 y menor a 2147483640")]
        public  decimal Monto { get; set; }

        [Display(Name = "Fecha de registro")]
        [Required(ErrorMessage = "El campo de {0} es requerido.")]
        [DataType(DataType.Date)]
        public DateTime FechaRegistro { get; set; }

        [DefaultValue(false)]
        public bool Deshabilitado { get; set; }
    }
}

using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using Microsoft.AspNetCore.Mvc;

namespace SanRafael.Models
{
    public class AreaProduccion
    {
        public int Id { get; set; }

        [Remote(action: "ExisteAreaProduccion", controller: "AreaProduccions", ErrorMessage = "Ya existe el Area de Producción", AdditionalFields = nameof(Id))]
        [Required(ErrorMessage = "El campo es requerido.")]
        [RegularExpression(@"[\w\s\u00f1\u00d1\u0028\u0029\u005B\u005DáéíóúÁÉÍÓÚ.:,-]*",
         ErrorMessage = "Caracteres inválidos. Solo se permiten letras, números y los siguientes caracteres: ( ) , . : - _")]
        public string Nombre { get; set; }

        [Required(ErrorMessage = "El campo es requerido.")]
        [StringLength(64, MinimumLength = 1, ErrorMessage = "Debe de contener mínimo {2} y máximo {1} caracteres.")]
        [RegularExpression(@"[\w\s\u00f1\u00d1\u0028\u0029\u005B\u005DáéíóúÁÉÍÓÚ.:,-]*",
         ErrorMessage = "Caracteres inválidos. Solo se permiten letras, números y los siguientes caracteres: ( ) , . : - _")]
        public string Responsable { get; set; }

        [Display(Name = "Descripción")]
        [Required(ErrorMessage = "El campo es requerido.")]
        [RegularExpression(@"[\w\s\u00f1\u00d1\u0028\u0029\u005B\u005DáéíóúÁÉÍÓÚ.:,-]*",
         ErrorMessage = "Caracteres inválidos. Solo se permiten letras, números y los siguientes caracteres: ( ) , . : - _")]
        public string Descripcion { get; set; }

        List<Receta> Recetas { get; set; }
    }
}

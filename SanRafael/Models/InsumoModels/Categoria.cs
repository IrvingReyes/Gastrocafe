using Microsoft.AspNetCore.Mvc;
using System.ComponentModel.DataAnnotations;

namespace SanRafael.Models.InsumoModels
{
    public class Categoria
    {
        public int Id { get; set; }
        
        [Required(ErrorMessage = "El {0} es requerido.")]
        [StringLength(64, MinimumLength = 1, ErrorMessage = "Debe de contener mínimo {2} y máximo {1} caracteres.")]
        [Remote(action: "ExisteCategoria", controller: "Categorias", ErrorMessage = "Ya existe la Categoría", AdditionalFields = nameof(Id))]
        [RegularExpression(@"[\w\s\u00f1\u00d1\u0028\u0029\u005B\u005DáéíóúÁÉÍÓÚ.:,-]*",
         ErrorMessage = "Caracteres inválidos. Solo se permiten letras, números y los siguientes caracteres: ( ) , . : - _")]
        public string Nombre { get; set; }
    }
}

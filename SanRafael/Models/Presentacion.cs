using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.AspNetCore.Mvc;

namespace SanRafael.Models
{
    public class Presentacion
    {
        [Key]
        [Required]
        public int idPresentacion { get; set; }

        [Remote(action: "ExistePresentacion", controller: "Presentaciones", ErrorMessage = "El insumo ya tiene esta presentación registrada", AdditionalFields = nameof(idPresentacion))]
        [Display(Name = "Nombre")]
        [Required(ErrorMessage = "El campo de {0} es requerido.")]
        [RegularExpression(@"[\w\s\u00f1\u00d1\u0028\u0029\u005B\u005DáéíóúÁÉÍÓÚ.:,-]*",
         ErrorMessage = "Caracteres inválidos. Solo se permiten letras, números y los siguientes caracteres: ( ) , . : - _")]
        public String nombre { get; set; }

        [Display(Name = "Cantidad de unidades")]
        [Required(ErrorMessage = "El campo de {0} es requerido.")]
        public double cantidadUnidades { get; set; }

        [Display(Name = "Precio")]
        [Required(ErrorMessage = "El campo de {0} es requerido.")]
        [DataType(DataType.Currency)]
        public double precioPresentacion { get; set; }

        [Display(Name = "Precio unitario")]
        [Required(ErrorMessage = "El campo de {0} es requerido.")]
        [DataType(DataType.Currency)]
        public double precioUnitario { get; set; }

        [Display(Name = "Fecha de caducidad")]
        [Required(ErrorMessage = "El campo de {0} es requerido.")]
        public bool fechaCaducidad { get; set; }

        [Display(Name = "Insumo")]
        public int InsumoId { get; set; }
        [ForeignKey("InsumoId")]
        public InsumoModels.Insumo insumo { get; set; }
    }
}

using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace SanRafael.Models.InsumoModels
{
    public class Insumo
    {
        public int Id { get; set; }

        [Remote(action: "ExisteInsumo", controller: "Insumos", ErrorMessage = "Ya existe el Insumo", AdditionalFields = nameof(Id))]
        [Required(ErrorMessage = "El campo {0} es requerido.")]
        [StringLength(64, MinimumLength = 1, ErrorMessage = "Debe de contener mínimo {2} y máximo {1} caracteres.")]
        [RegularExpression(@"[\w\s\u00f1\u00d1\u0028\u0029\u005B\u005DáéíóúÁÉÍÓÚ.:,-]*",
         ErrorMessage = "Caracteres inválidos. Solo se permiten letras, números y los siguientes caracteres: ( ) , . : - _")]
        public string Nombre { get; set; }

        [DefaultValue(false)]
        public bool Deshabilitado { get; set; }
        
        [DefaultValue(false)]
        public decimal Cantidad { get; set; }

        [RegularExpression(@"[\w\s\u00f1\u00d1\u0028\u0029\u005B\u005DáéíóúÁÉÍÓÚ.:,-]*",
         ErrorMessage = "Caracteres inválidos. Solo se permiten letras, números y los siguientes caracteres: ( ) , . : - _")]
        public string RutaImagen { get; set; }

        [Required(ErrorMessage = "El campo {0} es requerido.")]
        [Range(0, int.MaxValue, ErrorMessage = "El valor debe ser mayor a {1}")]
        [Display(Name = "Stock mínimo:")]
        public decimal StockMinimo { get; set; }

        [Required(ErrorMessage = "El campo {0} es requerido.")]
        [StringLength(64, MinimumLength = 1, ErrorMessage = "Debe de contener mínimo {2} y máximo {1} caracteres.")]
        [RegularExpression(@"[\w\s\u00f1\u00d1\u0028\u0029\u005B\u005DáéíóúÁÉÍÓÚ.:,-]*",
         ErrorMessage = "Caracteres inválidos. Solo se permiten letras, números y los siguientes caracteres: ( ) , . : - _")]
        public string Tienda { get; set; }

        [DataType(DataType.Date)]
        [Display(Name = "Fecha de Compra")]
        [DisplayFormat(DataFormatString = "{0:dd-MM-yyyy}", ApplyFormatInEditMode = true)]
        public DateTime FechaDeRegistro { get; set; } = DateTime.Now;

        [DataType(DataType.Currency)]
        [Required(ErrorMessage = "El campo {0} es requerido")]
        [Range(0.0, Double.MaxValue, ErrorMessage = "El valor debe ser mayor a {1}")]
        public float Precio { get; set; }
        #region Navegación
        [Display(Name = "Categoría")]
        public int CategoriaId { get; set; }
        [ForeignKey("CategoriaId")]
        public Categoria Categoria { get; set; }

        [Display(Name = "Unidad")]
        [Required(ErrorMessage = "Por favor selecciona una {0}")]
        public int UnidadId { get; set; }
        [ForeignKey("UnidadId")]
        public Unidad Unidad { get; set; }

        public List<InsumosRecetas> Recetas { get; set; }
        #endregion
    }
}

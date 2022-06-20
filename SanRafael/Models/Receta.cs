using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace SanRafael.Models
{
    public class Receta
    {
        public int Id { get; set; }

        [Remote(action: "ExisteReceta", controller: "Recetas", ErrorMessage = "Ya existe la Receta", AdditionalFields = nameof(Id))]
        [Required(ErrorMessage = "El campo {0} es requerido.")]
        [StringLength(64, MinimumLength = 1, ErrorMessage = "Debe de contener mínimo {2} y máximo {1} caracteres.")]
        [RegularExpression(@"[\w\s\u00f1\u00d1\u0028\u0029\u005B\u005DáéíóúÁÉÍÓÚ.:,-]*",
         ErrorMessage = "Caracteres inválidos. Solo se permiten letras, números y los siguientes caracteres: ( ) , . : - _")]
        public string Nombre { get; set; }

        [Display(Name = "Método de preparación")]
        [RegularExpression(@"[\w\s\u00f1\u00d1\u0028\u0029\u005B\u005DáéíóúÁÉÍÓÚ.:,-]*",
         ErrorMessage = "Caracteres inválidos. Solo se permiten letras, números y los siguientes caracteres: ( ) , . : - _")]
        public string MetodoPreparacion { get; set; }

        [Required(ErrorMessage = "El campo {0} es requerido.")]
        [Range(1, int.MaxValue, ErrorMessage = "El valor debe ser mayor a 0")]
        public decimal Porciones { get; set; }

        [Display(Name = "Tipo de receta")]
        [Required(ErrorMessage = "El campo {0} es requerido.")]
        [StringLength(64, MinimumLength = 1, ErrorMessage = "Debe de contener mínimo {2} y máximo {1} caracteres.")]
        [RegularExpression(@"[\w\s\u00f1\u00d1\u0028\u0029\u005B\u005DáéíóúÁÉÍÓÚ.:,-]*",
         ErrorMessage = "Caracteres inválidos. Solo se permiten letras, números y los siguientes caracteres: ( ) , . : - _")]
        public string TipoReceta { get; set; }
        [Required(ErrorMessage = "El campo {0} es requerido.")]
        [StringLength(64, MinimumLength = 1, ErrorMessage = "Debe de contener mínimo {2} y máximo {1} caracteres.")]
        [Display(Name = "Clasificación")]
        [RegularExpression(@"[\w\s\u00f1\u00d1\u0028\u0029\u005B\u005DáéíóúÁÉÍÓÚ.:,-]*",
         ErrorMessage = "Caracteres inválidos. Solo se permiten letras, números y los siguientes caracteres: ( ) , . : - _")]
        public string Clasificacion { get; set; }

        [DataType(DataType.Currency)]
        [Display(Name = "Costo unitario")]
        public decimal CostoUnitario { get; set; }
        
        [Display(Name = "Costos fijos variables + utilidad")]
        [DataType(DataType.Currency)]
        public decimal CostoOtrosConUtilidad { get; set; }
        
        [Display(Name = "Precio sugerido")]
        [DataType(DataType.Currency)]
        public decimal PrecioSugerido { get; set; }

        [Display(Name = "Precio definido por el usuario")]
        [Required(ErrorMessage = "El campo {0} es requerido.")]
        [Range(0, int.MaxValue, ErrorMessage = "El valor debe ser mayor a {1}")]
        [DataType(DataType.Currency)]
        public decimal PrecioDefinidoPorUsuario { get; set; }

        [DataType(DataType.Currency)]
        [Display(Name = "Pago por 16% de IVA")]
        public decimal PrecioVentaConIva { get; set; }

        [Display(Name = "Activo")]
        public bool Activo { get; set; }

        [Display(Name = "Recetas vendidas")]
        [Required(ErrorMessage = "El campo es requerido.")]
        [DefaultValue(0)]
        public int RecetasVendidas { get; set; }

        //El costo de operación es el total de multiplicar el costo unitario de cada platillo
        // por el número de platillos vendidos
        [Display(Name = "Costo de operación")]
        [DataType(DataType.Currency)]
        [Range(0, int.MaxValue, ErrorMessage = "El valor debe ser mayor a {1}")]
        public decimal CostoOperacion { get; set; }

        //El ingreso de producto es el total de multiplicar el costo definido por el usuario
        // por el número de platillos vendidos
        [Display(Name = "Ingreso de producto")]
        [DataType(DataType.Currency)]
        [Range(0, int.MaxValue, ErrorMessage = "El valor debe ser mayor a {1}")]
        public decimal IngresoProducto { get; set; }

        [Display(Name = "Identificador de area")]
        [Editable(true)]
        public int? AreaProduccionId { get; set; }
        [Display(Name = "Area de producción")]
        public AreaProduccion AreaProduccion { get; set; }

        [Display(Name = "Insumos de la receta")]
        virtual public List<InsumosRecetas> InsumosReceta { get; set; }


        virtual public List<RecetaAReceta> RecetasPadres { get; set; }
        virtual public List<RecetaAReceta> RecetasIntegradoras { get; set; }

        public Receta()
        {
            //InsumosReceta = new List<InsumosRecetas>();
            //RecetasIntegradoras = new List<RecetaAReceta>();
        }
    }
}

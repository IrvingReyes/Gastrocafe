using SanRafael.Models.InsumoModels;
using System.ComponentModel.DataAnnotations.Schema;

namespace SanRafael.Models
{
    public class InsumosRecetas
    {
        [ForeignKey("IdInsumo")]
        public int IdInsumo { get; set; }
        [ForeignKey("IdReceta")]
        public int IdReceta { get; set; }
        [ForeignKey("IdUnidad")]
        public int IdUnidad { get; set; }

        
        virtual public Insumo Insumo { get; set; }
        virtual public Receta Receta { get; set; }
        public Unidad Unidad { get; set; }

        public decimal PesoNeto { get; set; }

    }
}

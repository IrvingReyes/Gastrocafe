
using System.ComponentModel.DataAnnotations.Schema;

namespace SanRafael.Models
{
    public class RecetaAReceta
    {
        public int? IdRecetaPadre { get; set; }
        public int? IdRecetaHijo { get; set; }

        [ForeignKey("IdRecetaPadre")]
        public Receta RecetaPadre { get; set; }
        [ForeignKey("IdRecetaHijo")]
        public Receta RecetaHijo { get; set; }

        public decimal Porciones { get; set; }
    }
}

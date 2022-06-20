using SanRafael.Models.InsumoModels;

namespace SanRafael.Models
{
    public class InsumosMarcas
    {
        public int InsumoId { get; set; }
        public int  MarcaId { get; set; }
        public Marca Marca { get; set; }
        public Insumo Insumo { get; set; }
    }
}

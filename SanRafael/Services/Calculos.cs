namespace SanRafael.Services
{
    public class Calculos
    {
        private readonly decimal otrosCostos;
        private readonly decimal precioSugerido;
        private readonly decimal precioIva;

        public decimal OtrosCostos
        {
            get { return otrosCostos; }
        }

        public decimal PrecioSugerido
        {
            get { return precioSugerido; }
        }

        public decimal PrecioIva
        {
            get { return precioIva; }
        }

        public Calculos(decimal costoRecetaUnitario)
        {
            this.otrosCostos = (costoRecetaUnitario * (decimal)0.7)/(decimal)0.3;
            this.precioIva = (costoRecetaUnitario + OtrosCostos) * (decimal)0.16;//solo el 16%(IVA) del subtotal
            this.precioSugerido = (costoRecetaUnitario + OtrosCostos) + PrecioIva;
            
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.AspNetCore.Authorization;
using SanRafael.Data;
using SanRafael.Models;
using SanRafael.Models.InsumoModels;
using SanRafael.Services;

namespace SanRafael.Controllers
{
    [Authorize]
    public class ReportesController : Controller
    {
        private readonly ApplicationDbContext _context;

        public ReportesController(ApplicationDbContext context)
        {
            _context = context;
        }

        public async Task<IActionResult> IndexPlatillosMasVendidos()
        {
            List<Receta> recetas = new List<Receta>();
            recetas = _context.Receta.FromSql("select * from Receta where Activo = 1 Order By RecetasVendidas DESC").ToList();
            return View(recetas);
        }

        public async Task<IActionResult> PreciosInsumosComprados()
        {
            List<InsumoPrecioHistorial> historial = new List<InsumoPrecioHistorial>();
            historial = await _context.InsumoPrecioHistorial.Include(x => x.Insumo).ToListAsync();
            historial.OrderBy(r => r.Fecha);
            return View(historial);
        }

        public async Task<IActionResult> PreciosRecetas()
        {
            List<Receta> recetas = new List<Receta>();
            recetas = await _context.Receta.Where(x => x.Activo).Include(x => x.AreaProduccion).ToListAsync();
            recetas.OrderByDescending(x => x.Nombre);

            return View(recetas);
        }
    }
}
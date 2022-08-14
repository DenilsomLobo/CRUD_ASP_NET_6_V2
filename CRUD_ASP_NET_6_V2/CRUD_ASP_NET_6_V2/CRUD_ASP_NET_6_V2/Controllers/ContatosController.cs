using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using CRUD_ASP_NET_6_V2.Data;
using CRUD_ASP_NET_6_V2.Models;

namespace CRUD_ASP_NET_6_V2.Controllers
{
    public class ContatosController : Controller
    {
        private readonly Contexto _context;

        public ContatosController(Contexto context)
        {
            _context = context;
        }

        // GET: Contatos
        public async Task<IActionResult> Index()
        {
              return _context.Contatos != null ? 
                          View(await _context.Contatos.ToListAsync()) :
                          Problem("Entity set 'Contexto.Contatos'  is null.");
        }



        // GET: Contatos/Create
        public IActionResult novo_contato(int id=0)
        {
            if (id == 0)
                return View(new Contatos());
            else
                return View(_context.Contatos.Find(id));
            return View();
        }

        // POST: Contatos/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> novo_contato([Bind("Id,Nome,Sexo,Data,Cidade,Codcontato")] Contatos contatos)
        {
            if (ModelState.IsValid)
            {
                if (contatos.Id == 0)
                     _context.Add(contatos);
                else
                    _context.Update(contatos);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(contatos);
        }



        // GET: Contatos/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (_context.Contatos == null)
            {
                return Problem("Entity set 'Contexto.Contatos'  is null.");
            }
            var contatos = await _context.Contatos.FindAsync(id);
            if (contatos != null)
            {
                _context.Contatos.Remove(contatos);
            }

            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }



    }
}

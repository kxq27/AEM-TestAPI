#nullable disable
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Newtonsoft.Json;
using WebApplication1.Models;

namespace WebApplication1.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AccountsController : ControllerBase
    {
        private readonly AccountContext _context;

        public AccountsController(AccountContext context)
        {
            _context = context;
        }

        // GET: api/Accounts
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Account>>> GetAccountItems()
        {
            return await _context.AccountItems.ToListAsync();
        }

        /// <summary>
        /// Get Bearer Token to call api.
        /// </summary>
        // POST: api/Accounts
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public string Post (Login login)
        {
            Token token = new Token();
            string test = token.GetBearerToken(login.Username, login.Password);
            return test;            
        }
       

        private bool AccountExists(long id)
        {
            return _context.AccountItems.Any(e => e.Id == id);
        }        

    }
}

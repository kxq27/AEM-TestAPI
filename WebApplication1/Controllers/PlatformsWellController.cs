#nullable disable
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using WebApplication1.Models;

namespace WebApplication1.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class PlatformsWellController : ControllerBase
    {
        GetPlatformWell platform = new();
       
        /// <summary>
        /// Call API and store data in local.
        /// </summary>
        // GET: api/Platforms
        [HttpGet("GetPlatformWellActual")]
        public string GetPlatformActual(string bearer)
        {
            var result = platform.ApiCall("PlatformWell/GetPlatformWellActual", bearer);          
            return result;          
        }
        /// <summary>
        /// Call API and store data in local.
        /// </summary>
        // GET: api/Platforms
        [HttpGet("GetPlatformWellDummy")]
        public string GetPlatformDummy(string bearer)
        {
            var result = platform.ApiCall("PlatformWell/GetPlatformWellDummy", bearer);
            return result;
        }
        
    }
}

using System.IO;
using System.Net.Mime;
using Microsoft.AspNetCore.Mvc;

namespace Probe.Api.Controllers
{
    [Route("api/[controller]")]
    public class ImageController : Controller
    {
        [HttpGet]
        public IActionResult Get()
        {
            var image = System.IO.File.OpenRead(Path.Combine("mnt","azure","docker.png"));
            return File(image, "image/jpeg");
        }
    }
}
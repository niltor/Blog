using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using OpentoTop.Data;
using OpentoTop.Models;
using System.Linq;
using System.Threading.Tasks;

namespace OpentoTop.Controllers {
    public class GTController : Controller
    {
        public GTController()
        {
        }

        public async Task<ApplicationUser> GetUser(UserManager<ApplicationUser> userManager) {
             return await userManager.GetUserAsync(User);
        }
        public JsonResult Error()
        {
            var Msg = ModelState.Values.SelectMany(v => v.Errors).Select(v => v.ErrorMessage);
            return Error<string>("", Msg.First());
        }
        public JsonResult Success<T>(T data, string msg = "success")
        {
            var result = new ReturnJson<T>();
            result.Status = 1;
            result.Data = data;
            result.Msg = msg;
            return Json(result);
        }
        public JsonResult Error<T>(T data, string msg = "error")
        {
            var result = new ReturnJson<T>();
            result.Status = 0;
            result.Data = data;
            result.Msg = msg;
            return Json(result);
        }

    }
    class ReturnJson<T> {
        public int Status { get; set; }
        public string Msg { get; set; }
        public T Data { get; set; }
    }

}
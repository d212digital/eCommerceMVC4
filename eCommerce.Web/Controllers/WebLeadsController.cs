using eCommerce.Entities;
using eCommerce.Services;
using eCommerce.Shared;
using eCommerce.Shared.Enums;
using eCommerce.Shared.Extensions;
using eCommerce.Shared.Helpers;
using eCommerce.Web.ViewModels;
using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;

namespace eCommerce.Web.Controllers
{
    public class WebLeadsController : PublicBaseController
    {
        // GET: WebLeads       
        public ActionResult Index()
        {
            var model = new PageViewModel();

            return View(model);
        }     
    }
}

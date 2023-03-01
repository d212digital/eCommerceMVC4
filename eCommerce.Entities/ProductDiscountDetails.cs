using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace eCommerce.Entities
{
   public class ProductDiscountDetails : BaseEntity
   {
        public int ProductRecordID { get; set; }
        public string Fullwidth { get; set; }

        public string Centrefoldedwidth { get; set; }

        public string Rolllength { get; set; }

        public decimal Priceperroll_1to5 { get; set; }
        public decimal Priceperroll_6to15 { get; set; }
        public decimal Priceperroll_16to23 { get; set; }
        public decimal Priceperroll_24to47 { get; set; }
        public decimal Priceperroll_48 { get; set; }
   }
}

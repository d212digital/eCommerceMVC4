﻿using System.ComponentModel.DataAnnotations.Schema;

namespace eCommerce.Entities
{
    public class OrderItem : BaseEntity
    {
        public int OrderID { get; set; }

        [NotMapped]
        public string ProductName { get; set; }
        public int ProductID { get; set; }
        public virtual Product Product { get; set; }

        /// <summary>
        /// Item Price is in Order Item because we can have a scenerio where we might charge less or greater than the Product Price.
        /// </summary>
        public decimal ItemPrice { get; set; }
        public int Quantity { get; set; }

        [NotMapped]
        public int DiscountItem { get; set; } // Add this property to the class again, may need to be removed

    }
}

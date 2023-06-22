namespace eCommerce.Entities.CustomEntities
{
    public class CartItem
    {
        public CartItem()
        {
            DiscountPrice = 0;
        }

        public int ItemID { get; set; }
        public int ItemDiscountID { get; set; }
        public int Quantity { get; set; }
        public decimal Price { get; set; }
        public decimal DiscountPrice { get; set; }
        public decimal? CalculateDiscount { get; set; }
        public string Fullwidth { get; set; }
        public string Centrefoldedwidth { get; set; }
        public string Rolllength { get; set; }
        public decimal ProductTotal
        {
            get
            {
                return Price * Quantity;
            }
        }
    }
}

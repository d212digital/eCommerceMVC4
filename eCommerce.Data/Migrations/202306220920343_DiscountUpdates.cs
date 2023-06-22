namespace eCommerce.Data.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class DiscountUpdates : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.ProductDiscountDetails", "ItemDiscountID", c => c.Int(nullable: false));
        }
        
        public override void Down()
        {
            DropColumn("dbo.ProductDiscountDetails", "ItemDiscountID");
        }
    }
}

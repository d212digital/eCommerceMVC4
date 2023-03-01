namespace eCommerce.Data.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AddtblProductDiscount : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.ProductDiscountDetails",
                c => new
                    {
                        ID = c.Int(nullable: false, identity: true),
                        ProductID = c.Int(nullable: false),
                        Fullwidth = c.String(),
                        Centrefoldedwidth = c.String(),
                        Rolllength = c.String(),
                        Priceperroll_1to5 = c.Decimal(nullable: false, precision: 18, scale: 2),
                        Priceperroll_6to15 = c.Decimal(nullable: false, precision: 18, scale: 2),
                        Priceperroll_16to23 = c.Decimal(nullable: false, precision: 18, scale: 2),
                        Priceperroll_24to47 = c.Decimal(nullable: false, precision: 18, scale: 2),
                        Priceperroll_48 = c.Decimal(nullable: false, precision: 18, scale: 2),
                        IsActive = c.Boolean(nullable: false),
                        IsDeleted = c.Boolean(nullable: false),
                        ModifiedOn = c.DateTime(),
                    })
                .PrimaryKey(t => t.ID);
            
        }
        
        public override void Down()
        {
            DropTable("dbo.ProductDiscountDetails");
        }
    }
}

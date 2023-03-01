namespace eCommerce.Data.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AddDicountDetailtoProduct : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.ProductDiscountDetails", "ProductRecord_ID", c => c.Int());
            CreateIndex("dbo.ProductDiscountDetails", "ProductRecord_ID");
            AddForeignKey("dbo.ProductDiscountDetails", "ProductRecord_ID", "dbo.ProductRecords", "ID");
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.ProductDiscountDetails", "ProductRecord_ID", "dbo.ProductRecords");
            DropIndex("dbo.ProductDiscountDetails", new[] { "ProductRecord_ID" });
            DropColumn("dbo.ProductDiscountDetails", "ProductRecord_ID");
        }
    }
}

namespace eCommerce.Data.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class RemovekeyFromDiscount : DbMigration
    {
        public override void Up()
        {
            DropForeignKey("dbo.ProductDiscountDetails", "ProductRecord_ID", "dbo.ProductRecords");
            DropIndex("dbo.ProductDiscountDetails", new[] { "ProductRecord_ID" });
            RenameColumn(table: "dbo.ProductDiscountDetails", name: "ProductRecord_ID", newName: "ProductRecordID");
            AlterColumn("dbo.ProductDiscountDetails", "ProductRecordID", c => c.Int(nullable: false));
            CreateIndex("dbo.ProductDiscountDetails", "ProductRecordID");
            AddForeignKey("dbo.ProductDiscountDetails", "ProductRecordID", "dbo.ProductRecords", "ID", cascadeDelete: true);
            DropColumn("dbo.ProductDiscountDetails", "ProductID");
        }
        
        public override void Down()
        {
            AddColumn("dbo.ProductDiscountDetails", "ProductID", c => c.Int(nullable: false));
            DropForeignKey("dbo.ProductDiscountDetails", "ProductRecordID", "dbo.ProductRecords");
            DropIndex("dbo.ProductDiscountDetails", new[] { "ProductRecordID" });
            AlterColumn("dbo.ProductDiscountDetails", "ProductRecordID", c => c.Int());
            RenameColumn(table: "dbo.ProductDiscountDetails", name: "ProductRecordID", newName: "ProductRecord_ID");
            CreateIndex("dbo.ProductDiscountDetails", "ProductRecord_ID");
            AddForeignKey("dbo.ProductDiscountDetails", "ProductRecord_ID", "dbo.ProductRecords", "ID");
        }
    }
}

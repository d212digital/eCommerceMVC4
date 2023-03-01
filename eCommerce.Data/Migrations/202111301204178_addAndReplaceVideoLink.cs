namespace eCommerce.Data.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class addAndReplaceVideoLink : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.ProductRecords", "VideoLink", c => c.String());
            DropColumn("dbo.Products", "VideoLink");
        }
        
        public override void Down()
        {
            AddColumn("dbo.Products", "VideoLink", c => c.String());
            DropColumn("dbo.ProductRecords", "VideoLink");
        }
    }
}

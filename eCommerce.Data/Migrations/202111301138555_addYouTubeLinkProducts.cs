namespace eCommerce.Data.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class addYouTubeLinkProducts : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Products", "VideoLink", c => c.String());
        }
        
        public override void Down()
        {
            DropColumn("dbo.Products", "VideoLink");
        }
    }
}

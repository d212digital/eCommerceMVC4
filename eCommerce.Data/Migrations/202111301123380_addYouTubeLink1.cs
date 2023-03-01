namespace eCommerce.Data.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class addYouTubeLink1 : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Categories", "VideoLink", c => c.String());
        }
        
        public override void Down()
        {
            DropColumn("dbo.Categories", "VideoLink");
        }
    }
}

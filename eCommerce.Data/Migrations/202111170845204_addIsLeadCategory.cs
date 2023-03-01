namespace eCommerce.Data.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class addIsLeadCategory : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Categories", "IsLead", c => c.Boolean(nullable: false));
        }
        
        public override void Down()
        {
            DropColumn("dbo.Categories", "IsLead");
        }
    }
}

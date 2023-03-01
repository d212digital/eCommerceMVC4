namespace eCommerce.Data.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class productislead : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Products", "IsLead", c => c.Boolean());
        }
        
        public override void Down()
        {
            DropColumn("dbo.Products", "IsLead");
        }
    }
}

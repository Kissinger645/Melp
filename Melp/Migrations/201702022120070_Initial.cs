namespace Melp.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Initial : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Movies",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Title = c.String(),
                        Genre = c.String(),
                        IMDBlink = c.String(),
                        Release = c.DateTime(nullable: false),
                    })
                .PrimaryKey(t => t.Id);
            
            CreateTable(
                "dbo.Reviews",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Name = c.String(),
                        Rating = c.Int(nullable: false),
                        MyProperty = c.Int(nullable: false),
                        Age = c.Int(nullable: false),
                        Gender = c.String(),
                        Occupation = c.String(),
                        Title_Id = c.Int(),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.Movies", t => t.Title_Id)
                .Index(t => t.Title_Id);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Reviews", "Title_Id", "dbo.Movies");
            DropIndex("dbo.Reviews", new[] { "Title_Id" });
            DropTable("dbo.Reviews");
            DropTable("dbo.Movies");
        }
    }
}

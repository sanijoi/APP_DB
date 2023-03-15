module "rds_db" {
  source                   = "github.com/sanijoi/MODULES/modules/db_module"
  allocated_storage        = 10
  db_name                  = "myrds"
  engine                   = "mysql"
  engine_version           = "5.7"
  instance_class           = "db.t3.micro"
  username                 = "ibekov"
  password                 = "ibekov2002"
  db_subnet_group_name     = "main"
  vpc_security_group_ids   = ["sg-0482a5cace35cba28"]
  skip_final_snapshot      = true
}
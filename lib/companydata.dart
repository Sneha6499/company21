class CompanyData {
  final String name;
  final String post;
  final String time;

  final String description;
  final int fprice;
  final int sprice;
  final String image;
  final int day;
  final String date;
  final String address;

  CompanyData(this.name,this.post,this.time, this.description, this.fprice, this.sprice,this.image,this.date,this.day,this.address);

  static List<CompanyData> getProducts() {
    List<CompanyData> items = <CompanyData>[];
    items.add(CompanyData(
        "CSL","SME Engineer - Clean..","full time",
        "it is made up with woolen , the price of this swater is cheeper"
            " than other swater is is very good company it is product based company",
        3000,5000,
        "one.png","03-03-2023",1,"it part , indore"));
    items.add(CompanyData(
        "Kensho Tecnologies","Senior Software Engin..","full time",
        "it is made up with woolen , the price of this swater is cheeper"
            " than other swater is is very good company it is product based company",
        3000,5000,
        "one.png","03-03-2023",1,"it part , indore"));
    items.add(CompanyData(
        "Chainalysis Inc.","Business Development","full time",
        "this is good company for developer we are providing good salery and good enviroment",
        3000,5000,
        "one.png","03-03-2023",1,"it part , indore"));
    items.add(CompanyData(
        "Kensho Technologies","Senior Software Engin..","full time",
        "it is made up with woolen , the price of this swater is cheeper"
            " than other swater",
        3000,5000,
        "one.png","03-03-2023",2,"it part , indore"));
    items.add(CompanyData(
        "Lattice","Staff Software Engineer","full time",
        "it is made up with woolen , the price of this swater is cheeper"
            " than other swater",
        3000,5000,
        "one.png","03-03-2023",3,"it part , indore"));
    items.add(CompanyData(
        "Chainalysis Inc.","Machine Learning Engine..","full time",
        "it is made up with woolen , the price of this swater is cheeper"
            " than other swater is is very good company it is product based company",
        3000,5000,
        "one.png","03-03-2023",1,"it part , indore"));
    items.add(CompanyData(
        "CSL","Senior Software Engineer","full time",
        "it is made up with woolen , the price of this swater is cheeper"
            " than other swater is is very good company it is product based company",
        3000,5000,
        "one.png","03-03-2023",1,"it part , indore"));


    return items;
  }
}
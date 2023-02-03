class Travel{
  String name;
  String address;
  String img;

  Travel(this.name,this.address,this.img);

  static List<Travel> generatedTravelList(){
    return[
Travel('DimPahar', 'BandarBan', 'images/ho1.jpg'),
      Travel('Jaflong', 'Syllet', 'images/ho6.jpg'),
      Travel('Kazipara', 'Railway Station', 'images/ho5.jpg')
    ];
  }

}
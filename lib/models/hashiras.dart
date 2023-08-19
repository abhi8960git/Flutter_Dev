
class HashiraModel{
 static final  hashiras=[
  Hashira(
     id: 1,
      name: "Giyu Tomioka",
      description: "Water Hashira",
      mainCharacteristic: "Exceptional water-based breathing techniques",
      imageUrl: "https://imgs.search.brave.com/fy-0y5-Kq2JxogVi2jzyPveMgYQuTpZewOqDcTKUmEo/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9jZG4u/d2FsbHBhcGVyc2Fm/YXJpLmNvbS83Mi8y/OS9FNEZrR28uanBn",
  )

];
}



class Hashira{
  
  final int id;
  final String name;
  final String description;
  final String mainCharacteristic;
  final String imageUrl;

  Hashira({
    required this.id,
    required this.name,
    required this.description,
    required this.mainCharacteristic,
    required this.imageUrl,
  });

}

import 'package:get/get.dart';
import '../model/planetsmodel.dart';

class Galaxy_Controller extends GetxController{

  RxList<galaxy_planets>l1=[
    galaxy_planets(Name: "MERCURY",Image:"assets/image/mercury.png" ,Location: "58m km",    MS: "3.7m/s2",    Overview:"Mercury is the smallest planet in our solar system. It's a little bigger than Earth's Moon. It is the closest planet to the Sun, but it's actually not the hottest. Venus is hotter." ),
    galaxy_planets(Name: "VENUS ", Image:"assets/image/vedd-removebg-preview.png" ,Location: "108.2m km", MS: "6.124m/s2",  Overview:"Venus is the second planet from the Sun. It is sometimes called Earth's 'sister' or 'twin' planet as it is almost as large and has a similar composition." ),
    galaxy_planets(Name: "EARTH",  Image:"assets/image/earth (2).png" ,Location: "149.6m km", MS: "9.798m/s2",  Overview:"Earth is the third planet from the Sun and the only astronomical object known to harbor life. While large volumes of water can be found throughout the Solar System, only Earth sustains liquid surface water. About 71% of Earth's surface is made up of the ocean, dwarfing Earth's polar ice, lakes, and rivers." ),
    galaxy_planets(Name: "MARS",   Image:"assets/image/mars.png" ,Location: "227.9m km", MS: "3.71m/s2",   Overview:"Mars is the fourth planet from the Sun and the second-smallest planet in the Solar System, being larger than only Mercury. In the English language, Mars is named for the Roman god of war." ),
    galaxy_planets(Name: "JUPITER",Image:"assets/image/ju-removebg-preview.png" ,Location: "778.5m km", MS: "27.92m/s2",  Overview:"Jupiter is the fifth planet from the Sun and the largest in the Solar System. It is a gas giant with a mass more than two and a half times that of all the other planets in the Solar System combined, but slightly less than one-thousandth the mass of the Sun." ),
    galaxy_planets(Name: "SATURN", Image:"assets/image/sa-removebg-preview.png" ,Location: "1.434b km", MS: "10.44m/s2",  Overview:"Saturn is the sixth planet from the Sun and the second-largest in the Solar System, after Jupiter. It is a gas giant with an average radius of about nine and a half times that of Earth. It has only one-eighth the average density of Earth; however, with its larger volume, Saturn is over 95 times more massive." ),
    galaxy_planets(Name: "URANUS", Image:"assets/image/ur-removebg-preview.png" ,Location: "2.871b km", MS: "21.754m/s2", Overview:"Uranus is the seventh planet from the Sun. Its name is a reference to the Greek god of the sky, Uranus, who, according to Greek mythology, was the great-grandfather of Ares, grandfather of Zeus and father of Cronus. It has the third-largest planetary radius and fourth-largest planetary mass in the Solar System." ),
    galaxy_planets(Name: "NEPTUNE",Image:"assets/image/neptune.png" ,Location: "4.495b km", MS: "45.12m/s2",  Overview:"Neptune is the eighth planet from the Sun and the farthest known solar planet. In the Solar System, it is the fourth-largest planet by diameter, the third-most-massive planet, and the densest giant planet. It is 17 times the mass of Earth, and slightly more massive than its near-twin Uranus." ),
  ].obs;

  galaxy_planets?DataPick;
}
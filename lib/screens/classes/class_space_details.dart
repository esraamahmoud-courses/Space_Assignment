class SpaceDetails {

  late int id;
  late String name;
  late String title;
  late String details;
  late String image;
  late String model;

  SpaceDetails(this.id, this.name, this.title, this.details, this.image, this.model);
  
}

List<SpaceDetails> spaceDetailsList = [
  SpaceDetails(
      1,
    "Sun",
    "The Sun: Our Solar System's Star",
    "The Sun is the heart of our solar system, a massive ball of plasma that provides heat, light, and energy to everything within its gravitational pull. Its immense size and temperature are fueled by nuclear fusion, a process that combines hydrogen atoms into helium, releasing vast amounts of energy. The Sun's magnetic field, which is constantly changing, influences solar activity like sunspots and solar flares, affecting space weather and potentially disrupting Earth-based technologies.",
    "assets/images/sun.png",
    "assets/images/sun.glb"
  ),
  
  SpaceDetails(
        2,
        "Mercury",
        "Mercury: The Closest Planet",
        "The Sun is the heart of our solar system, a massive ball of plasma that provides heat, light, and energy to everything within its gravitational pull. Its immense size and temperature are fueled by nuclear fusion, a process that combines hydrogen atoms into helium, releasing vast amounts of energy. The Sun's magnetic field, which is constantly changing, influences solar activity like sunspots and solar flares, affecting space weather and potentially disrupting Earth-based technologies.",
        "mercury.png ",
        "mercury.glb"
  ),
  
  SpaceDetails(
      3,
      "Venus",
      "Venus: Earth's Toxic Twin",
      "Venus is often referred to as Earth's twin due to its similar size and composition. However, its thick atmosphere, composed primarily of carbon dioxide, traps heat, making it the hottest planet in our solar system. This greenhouse effect has created a hostile environment with temperatures hot enough to melt lead. Venus is also shrouded in a thick layer of sulfuric acid clouds, which reflect sunlight and give it a yellowish appearance.",
      "venus.png",
      "venus.glb"
  ),

  SpaceDetails(
      4,
      "Earth",
      "Earth: Our Blue Marble",
      "Earth is the only known planet in the universe that supports life. Its unique combination of factors, including liquid water, a breathable atmosphere, and a suitable distance from the Sun, has created the ideal conditions for the development of complex organisms. Earth's magnetic field protects it from harmful solar radiation, and its atmosphere helps to regulate temperature and weather patterns.",
      "earth.png",
      "earth.glb"
  ),

  SpaceDetails(
      5,
      "Mars",
      "Mars: The Red Planet",
      "Mars, often called the Red Planet due to its reddish hue caused by iron oxide, is a cold, rocky world with a thin atmosphere. It has polar ice caps, ancient riverbeds, and evidence of past volcanic activity, suggesting that it once had a warmer, wetter climate. Mars is a prime target for exploration due to its potential for past or present life, and NASA's Perseverance rover is currently searching for signs of ancient microbial life on the planet's surface.",
      "mars.png",
      "mars.glb"
  ),

  SpaceDetails(
      6,
      "Jupiter",
      "Jupiter: The Gas Giant",
      "Jupiter is the largest planet in our solar system, a gas giant composed primarily of hydrogen and helium. Its Great Red Spot, a massive storm that has been raging for centuries, is a testament to its turbulent atmosphere. Jupiter has a strong magnetic field and numerous moons, including Europa, which is believed to have a subsurface ocean that could potentially harbor life.",
      "jupiter.png",
      "jupiter.glb"
  ),

  SpaceDetails(
      7,
      "Saturn",
      "Saturn: The Ringed Planet",
      "Saturn is best known for its spectacular rings, which are composed of countless ice particles and rocks. It is a gas giant with a composition similar to Jupiter, but its rings and moons give it a distinct appearance. Saturn's largest moon, Titan, has a thick atmosphere and is the only known celestial body outside of Earth with liquid lakes and rivers.",
      "saturn.png",
      "saturn.glb"
  ),

  SpaceDetails(
      8,
      "Uranus",
      "Uranus: The Tilted Planet",
      "Uranus is an ice giant with a unique axial tilt, causing its seasons to be extreme. It is surrounded by faint rings and has numerous moons, including Miranda, known for its chaotic terrain. Uranus's atmosphere is composed primarily of hydrogen, helium, and methane, giving it a pale blue color.",
      "uranus.png",
      "uranus.glb"
  ),

  SpaceDetails(
      9,
      "Neptune",
      "Neptune: The Distant World",
      "Neptune is the farthest planet from the Sun and is another ice giant. Its atmosphere is similar to Uranus, but it is a deeper blue color due to the presence of methane. Neptune has several moons, including Triton, which orbits the planet in a retrograde direction and is believed to be a captured Kuiper Belt object.",
      "neptune.png",
      "neptune.glb"
  ),

];
enum WindDirection {
  west,
  east,
  north,
  south,
  southwest,
  southeast,
  northwest,
  northeast
}

extension WindDirectionExtension on WindDirection { 
  static WindDirection fromDegrees(num degree) {
    if(degree > 337 && degree  <= 360 || degree >= 0 && degree <=22 ){
    return WindDirection.north;
    
  } else if(degree >= 23 && degree <=67){ 
    return WindDirection.northeast;

  } else if(degree >67 && degree <= 112){
return WindDirection.east;

  } else if(degree > 112 && degree <= 157){
    return WindDirection.southeast;

  }else if (degree >157 && degree <= 202){
    return WindDirection.south;

  }else if (degree > 202 && degree <=247){
return WindDirection.southwest;

  }else if (degree > 247 && degree <=292){
return WindDirection.west;

  }else if (degree >292 && degree <=337);
  return WindDirection.northwest;

  }
  String get title{
    switch(this){
      case WindDirection.west:
        return 'W';
      case WindDirection.east:
        return 'E';
      case WindDirection.north:
        return 'N';
      case WindDirection.south:
        return 'S';
      case WindDirection.southwest:
        return 'SW';
      case WindDirection.southeast:
        return 'SW';
      case WindDirection.northwest:
        return 'NW';
      case WindDirection.northeast:
        return 'NE';
    }
  }
}


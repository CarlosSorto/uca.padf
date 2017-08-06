function initMap() {
    var map = new google.maps.Map(document.getElementById('map'), {
      zoom: 15,
      center: {lat: 13.681189, lng: -89.235058}
    });

    var marker = new google.maps.Marker({
      position: map.getCenter(),
      icon: './images/ic_placeholder.png',
      map: map
    });
}

let infowindow;

function initMap() {
  const location = new google.maps.LatLng(35.6895, 139.6917);
  const map = new google.maps.Map(document.getElementById('map'), {
    center: location,
    zoom: 15
  });
}

window.initMap = initMap;
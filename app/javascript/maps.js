let infowindow;

function initMap() {
  const location = new google.maps.LatLng(35.6895, 139.6917);
  const map = new google.maps.Map(document.getElementById('map'), {
    center: location,
    zoom: 15
  });

  infowindow = new google.maps.InfoWindow();

  const request = {
    location: location,
    radius: '1000',
    type: ['cafe', 'restaurant', 'bar']
  };

  const service = new google.maps.places.PlacesService(map);
  service.nearbySearch(request, (results, status) => {
    if (status === google.maps.places.PlacesServiceStatus.OK) {
      results.forEach(place => {
        const placeLoc = place.geometry.location;

        // マーカーを作成
        const marker = new google.maps.Marker({
          map: map,
          position: placeLoc
        });

        // マーカーにクリックイベントを追加
        marker.addListener('click', () => {
          const contentString = `
            <div>
              <strong>${place.name || "名前情報なし"}</strong><br>
              住所: ${place.vicinity || "住所情報なし"}<br>
              電話: ${place.formatted_phone_number || "電話番号情報なし"}<br>
              営業時間:<br>${place.opening_hours ? place.opening_hours.weekday_text.join('<br>') : '営業時間情報なし'}
            </div>
          `;

          // 地図上に情報ウィンドウを開くための座標を設定
          infowindow.setContent(contentString);
          infowindow.open(map, marker);
        });
      });
    }
  });
}

window.initMap = initMap;
jQuery(document).ready(function () {
    jQuery("#simplegmaps-1").simplegmaps({
        MapOptions: {
            mapTypeId: google.maps.MapTypeId.ROADMAP,
            zoom: 8,
            scrollwheel: false,
        }
    });
});


$(document).ready(function () {
    // Activate Carousel with a specified interval
    $("#banner").carousel({ interval: 5000 });

    // Enable Carousel Indicators
    $(".item1").click(function () {
        $("#banner").carousel(0);
    });
    $(".item2").click(function () {
        $("#banner").carousel(1);
    });
    $(".item3").click(function () {
        $("#banner").carousel(2);
    });

    // Enable Carousel Controls
    $(".carousel-control-prev").click(function () {
        $("#banner").carousel("prev");
    });
    $(".carousel-control-next").click(function () {
        $("#banner").carousel("next");
    });
});

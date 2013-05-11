/*Funciones para el manejo de los submenus*/
function mainmenu() {
    $(" #menu_principal ul ").css({ display: "none" });
    $(" #menu_principal li").hover(function() {
        $(this).find('ul:first:hidden').css({ visibility: "visible", display: "none"}).slideDown(400);
    }, function() {
        $(this).find('ul:first').slideUp(400);
    });
}
$(document).ready(function() {
    mainmenu();
});


/*Funciones para el manejo del slide show*/
function slideSwitch() {
    var $active = $('#slideshow IMG.active');

    if ($active.length == 0) $active = $('#slideshow IMG:last');

    // Orden definido en la capa slideshow
    var $next = $active.next().length ? $active.next()
        : $('#slideshow IMG:first');

    // Orden aleatorio

//    var $sibs  = $active.siblings();
//    var rndNum = Math.floor(Math.random() * $sibs.length );
//    var $next  = $( $sibs[ rndNum ] );

    $active.addClass('last-active');

    $next.css({ opacity: 0.0 })
        .addClass('active')
        .animate({ opacity: 1.0 }, 2000, function() {
            $active.removeClass('active last-active');
        });
}

$(function() {
    setInterval("slideSwitch()", 3000);
});

/*Funcion para el tooltip*/
$(function() {
    // modify global settings
    $.extend($.fn.Tooltip.defaults, {
        track: true,
        delay: 0,
        showURL: false,
        showBody: " - "
    });
    $('a, input, img').Tooltip();
});


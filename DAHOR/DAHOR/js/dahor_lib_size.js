/*Métodos para obtener las dimensiones/scroll de la pantalla/ventana*/
function widthViewport() {
    var widthViewport;
    if (typeof window.innerWidth != 'undefined') {
        widthViewport = window.innerWidth - 17;
    } else if (typeof document.documentElement != 'undefined' && typeof document.documentElement.clientWidth != 'undefined' && document.documentElement.clientWidth != 0) {
        widthViewport = document.documentElement.clientWidth;
    } else {
        widthViewport = document.getElementsByTagName('body')[0].clientWidth;
    }
    return widthViewport;
}

function heightViewport() {
    var heightViewport;
    if (typeof window.innerWidth != 'undefined') {
        heightViewport = window.innerHeight - 17;
    } else if (typeof document.documentElement != 'undefined' && typeof document.documentElement.clientWidth != 'undefined' && document.documentElement.clientWidth != 0) {
        heightViewport = document.documentElement.clientHeight;
    } else {
        heightViewport = document.getElementsByTagName('body')[0].clientHeight;
    }
    return heightViewport;
}

function xScroll() {
    var xScroll;
    xScroll = self.pageXOffset || (document.documentElement.scrollLeft + document.body.scrollLeft);
    return xScroll;
}

function yScroll() {
    var yScroll;
    yScroll = self.pageYOffset || (document.documentElement.scrollTop + document.body.scrollTop);
    return yScroll;
}

function widthTotal() {
    var _widthViewport, widthTotal;
    _widthViewport = widthViewport();
    widthTotal = Math.max(document.documentElement.scrollWidth, document.body.scrollWidth, _widthViewport);
    return widthTotal;
}

function heightTotal() {
    var _heightViewport, heightTotal;
    _heightViewport = heightViewport();
    heightTotal = Math.max(document.documentElement.scrollHeight, document.body.scrollHeight, _heightViewport);
    return heightTotal;
}
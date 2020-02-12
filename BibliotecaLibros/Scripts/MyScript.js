$(document).ready(function () {
    $('.carousel.carousel-slider').carousel({
        fullWidth: true,
        indicators: true,
    });
    $('.tooltipped').tooltip();
});

function PrestarLibro(Id) {
    $.ajax({
        url: '/Libro/Prestamo',
        dataType: 'json',
        type: 'post',
        data: { IdLibro: Id },
        success: function (datos) {
            if (datos.Stock != -1) {
                $('.stock').html(datos.Stock);
            } else {
                $('.stock').html(0);
                alert('No hay más libros de este título');
            }
        },
        error: function (datos) {
            alert("Ocurrió un error");
        }
    });
}
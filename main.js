// codigo carrusel de imagenes

document.getElementById('prevBtn').addEventListener('click', function () {
    const sliderContainer = document.querySelector('.slider-container');
    const scrollAmount = sliderContainer.scrollLeft - sliderContainer.clientWidth;
    sliderContainer.scrollTo({
        left: scrollAmount,
        behavior: 'smooth'
    });
});

document.getElementById('nextBtn').addEventListener('click', function() {
    const sliderContainer = document.querySelector('.slider-container');
    const scrollAmount = sliderContainer.scrollLeft + sliderContainer.clientWidth;
    sliderContainer.scrollTo({
        left: scrollAmount,
        behavior: 'smooth'
    });
});

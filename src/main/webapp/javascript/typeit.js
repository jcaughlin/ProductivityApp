$(document).ready(function(){
    new TypeIt('.type-it', {
        speed: 400,
        lifeLike: false,
        autoStart: false,
        loop: true
    })
        .type('I am feeling very slow!').break()
        .options({speed: 100})
        .type('Now I had some coffee.').break()
        .type('This was the worst').delete(5)
        .type('best class ever!').break()
        .type('Cubs still stink!');
});
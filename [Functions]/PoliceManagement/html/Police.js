
$(function () {
    window.onload = () => {
        window.addEventListener("message", () => {
            let input = document.querySelector("input");
            input.forEach(Element => {
                console.log(Element)
            });

            $(".update").click(function (e) {
                e.preventDeault();
            });

            $(".Fired").click(function(e) {
                e.preventDeault();                 
            });
        });
    }
});
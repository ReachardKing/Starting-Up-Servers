
function CountcLICKS() {
    let count = 0;
    let from = count;
    let to = 100;
    let interval = 30;
    count += 1
    if (!count && from == to) {
        document.querySelector(".Count-el").textContent = from;
        return;
    }
    let counter = setInterval(() => {
        from += count;
        document.querySelector(".Count-el").textContent = from;

        if (from == to) {
            clearInterval(counter)
        }
    }, interval);
}

CountcLICKS();



$(function (=) {
    function display(bool) {
        if (bool) {
            $("#MDTcontainer").show();
        } else {
            $("#MDTcontainer").hide();
        }
    }
    display(false);

    window.addEventListener("message", (event)=>{
        var item = event.data;
        if (item != undefined && item.type === "MDT") {
            if (item.visible == true) {
                display(true);
            } else {
                display(false);
            }
        } else if (item.type === "remove") {
            $("#MDTcontainer").hide();
        }
    })

    document.getElementsByClassName("Save").addEventListener("click", (event)=> {
        event.preventDefault();
    })
    document.getElementsByClassName("Save-jail").addEventListener("click", (event)=> {
        event.preventDefault();
    })

    $.post("https://FivemMDT/ShowPlayerName", JSON.stringify({}))
   
    $(".Save").click(()=> {
        $.post("https://FivemMDT/remove", JSON.stringify({}))
    })
    
    $(".Save-jail").click(() => {
        $.post("https://FivemMDT/remove", JSON.stringify({}))
    })

    $(".div-close").click(() => {
        $.post("https://FivemMDT/remove", JSON.stringify({}))
    })
    $(".Cancel").click(() => {
        $.post("https://FivemMDT/remove", JSON.stringify({}))
    })
})
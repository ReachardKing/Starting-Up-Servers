

$((-) => {
    function display(bool) {
        if (bool) {
            $("#MDTcontainer").show();
        } else {
            $("#MDTcontainer").hide();
        }
    }
    display(false)

    window.addEventListener("message", (event) => {
        var item = event.data;
        if (item != undefined && item.type === "MDT") {
            if (item.visible == true) {
                display(true)
            } else {
                display(false)
            }
        }
        
        if (item.type === "remove") {
            $("#MDTcontainer").hide();
        }
        
        
        $(".Save").on("click", (event) => {
            event.preventDefault();
        });
        
        $(".Save-jail").on("click", (event) => {
            event.preventDefault();
        });
        
        
        $.post("https://FivemMDT/ShowPlayerName", JSON.stringify({}));
        
        
        $(".Save").click(() => {
            $.post("https://FivemMDT/SaveIncident", JSON.stringify({}));
        });
        
        $(".Save-jail").click(() => {
            $.post("https://FivemMDT/SaveIncident", JSON.stringify({}));
        });
        
        $(".div-close").click(() => {
            $.post("https://FivemMDT/remove", JSON.stringify({}));
        });
        $(".close").click(()=> {
            $.post("https://FivemMDT/remove", JSON.stringify({}))
        })
        $(".Cancel").click(() => {
            $.post("https://FivemMDT/remove", JSON.stringify({}));
        });
    })  
})
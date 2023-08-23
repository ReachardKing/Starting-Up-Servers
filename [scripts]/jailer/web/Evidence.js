
$(()=> {
    function display(bool) {
        if (bool) {
            $(".manage-jail-containe").show()
        } else {
            $(".manage-jail-containe").hide()
        }
    }
    
    display(false)
    
    window.addEventListener("message", (event)=> {
        var item = event.data

        if (item != undefined && item.action == 'Jail') {
            if (item.visible == true ) {
                display(true)
            } else {
                display(false)
            }
        }

        $(".Submit").click(function (e) { 
            e.preventDefault();
            $(`https://jailer/Jail, JSON.stringify({}))
        });

        $(".Cancel").click(function (e) { 
            e.preventDefault();
            $(`https://jailer/cancel`, JSON.stringify({}))
        });
    })
})


$(()=> {
    function display(bool) {
        if (bool) {
            $(".JailMenu").show()
        } else {
             $(".JailMenu").hide()
        }
    }

    function display2(bool) {
        $(".JailBreaker").show()
    } else {
        $(".JailBreaker").hide()
    }
    
    display(false)
    display2(false)
    
    window.addEventListener("message", (event)=> {
        var item = event.data

        if (item != undefined && item.action == 'Jail') {
            if (item.visible == true ) {
                display(true)
            } else {
                display(false)
            }
        }

        if(item != undefined && item.action == 'jailbreak) {
           if(item.visible == true ){
            display2(true)
           } else {
            display2(false)
           }
        }

        $(".Submit").click(function (e) { 
            e.preventDefault();
            $(`https://jailer/Jail, JSON.stringify({}))
        });

        $(".Cancel").click(function (e) { 
            e.preventDefault();
            $(`https://Jailer/cancel`, JSON.stringify({}))
        });
    })
})


$(()=> {
    function display(bool) {
        if (bool) {
            $(".EvidencePupOut").show()
        } else {
            $(".EvidencePupOut").hide()
        }
    }
    
    display(false)
    
    window.addEventListener("message", (event)=> {
        var item = event.data

        if (item != undefined && item.action == 'Evidence') {
            if (item.visible == true ) {
                display(true)
            } else {
                display(false)
            }
        }

        $(".Submit").click(function (e) { 
            e.preventDefault();
            $(`https://jailer/Jail,JSON.stringify({}))
        });

        $(".cancel").click(function (e) { 
            e.preventDefault();
            $(`https://jailer/cancel`, JSON.stringify({}))
        });
    })
})

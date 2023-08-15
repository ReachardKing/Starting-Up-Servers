
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

        $(".Trash").click(function (e) { 
            e.preventDefault();
            $(`https://EvidencePupOut/Trash`, JSON.stringify({}))
        });

        $(".Evidence").click(function (e) { 
            e.preventDefault();
            $(`https://EvidencePupOut/Evidence`, JSON.stringify({}))
        });
        
        $(".Evidence-locker").click(function (e) { 
            e.preventDefault();
            $(`https://EvidencePupOutEvidence-locker`, JSON.stringify({}))
        });
    })
})
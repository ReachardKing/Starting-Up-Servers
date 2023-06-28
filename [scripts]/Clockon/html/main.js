$(()=>{
    window.addEventListener("message", ((event)=>{
        const item = event.data;
        $(".red").hide();
        $(".green").hide();
        $(".ClockOn").hide();
        if (item != undefined && item.type === "Show") {
            $(".red").show();
        } else {
            $(".green").show();
        }
        
        setTimeout(() => {
           $(".red").hid();
           $(".green").hide(); 
        }, 200);
        
        if (item != undefined && item.action === "Show") {
            $(".ClockOn").show();
        } else {
            $(".ClockOff").show();
        }

    }))
})
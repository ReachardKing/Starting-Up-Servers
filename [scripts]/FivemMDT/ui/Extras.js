
$(()=>{
    $(".reports-location-add-btn").click(function (e) { 
        $(".reports-location-add-btn").append(`
        <button>crrent Location</button>
        <button>Map</buuton>
        `);
    });

    $(".SearchName").click(()=>{
        $(".displaynameconten").append(`
        <div class="incidents-person-search-holder">
            <!--  -->
        </div>
        `)
    })
    $(".SearchVehicle").click(()=>{
        $(".displayvehiclecontent")
    })

    $(".SearchName").click(()=>{
        $(".displayincidentcontent")
    })

    $(".Point-system").click(()=>{
        $(".displaypointsystem")
    })

    function Sorts() {

    }
    Sorts()
})
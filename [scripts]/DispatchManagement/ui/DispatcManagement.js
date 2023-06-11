
 $(function () {
    function display(bool) {
        if (bool) {
            $("#DispatchManagement").show();
        } else {
            $("#DispatchManagement").hide();
        }
    }
    display(false);

    window.addEventListener("message", (event) => {
        var item = event.data

        if (item !== undefined && item.type === "IsDispatch") {
            if (item.visible === true) {
                display(true)
            } else {
                display(false)
            }
        } else {
            display(false);
        }
        
        if (item.type === "remove") {
            $("#DispatchManagement").hide();
        }

        if (item.action === "remove") {
            $("#DispatchManagement").hide();
        }

        if ((DispatchName.length + Dispatch.length) > 124) {
            $("#Dispatchcontent").append(`<span>${DispatchName}${Dispatch}${Date}</span> <button id="characterButtonDelete${id}" class="createdButtonDelete"><a class="fas fa-trash-alt"></a></button>`);
        }

        $("#Update").click(() => {
            $.post("https://DispatchManagement/NewDispatchEmployees", JSON.stringify({
                DispatchName: $("#Dispatch-name").val(),
                Dispatch: $(".Dispatch").val(),
            }))
        })
        $(".Submit").click(() => {
            $.post("https://DispatchManagement/remove", JSON.stringify({}))
            return;
        })

        $(".Cancel").click(() => {
            $.post("https://DispatchManagement/remove", JSON.stringify({}))
            return;
        })

         $(".Searched-EMS").click(() => {
            $.post("https://DispatchManagement/remove", JSON.stringify({}))
            return;
        })
    })
})
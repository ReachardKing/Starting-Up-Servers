
$(document).ready(() => {
    $(function () {
        function display(bool) {
            if (bool) {
                $("#EMSmanagement").show();
            } else {
                $("#EMSmanagement").hide();
            }
        }
        display(false);

        window.addEventListener("message", (event) => {
            var item = event.data

            if (item !== undefined && item.type === "init") {
                if (item.visible == true) {
                    display(true)
                } else {
                    display(false)
                }
            } else if (item.type === "Closeform") {
                $("#EMSmanagement").hide();
            }

            $(".Submit").click(() => {
                $.post("https://EMSManagement/Closeform", JSON.stringify({}))
                return;
            })

            $(".Cancel").click(() => {
                $.post("https://EMSManagement/Closeform", JSON.stringify({}))
                return;
            })

            $(".Searched-EMS").click(() => {
                $.post("https://EMSManagement/Closeform", JSON.stringify({}))
                return;
            })
        })
    })
})
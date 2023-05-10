let name = $("#name").val('');
let inputvalue = $("#id").val('');
let selecttions = $("#options").val('');

$(function () {
    window.onload = (e) => {
        window.addEventListener("message", () => {

            $(".Submit").click(function () {
                if (inputvalue && selecttions) {
                    username = async function (source, callback) {
                        if (typeof source == 'string') return source;
                        if (!GetPlayerName(source)) return false;
                        let arr = []
                        for (let index = 0; index <= GetActivePlayers(source); index++) {
                            if (GetPlayerPed(source, index)) {
                                arr.push(GetPlayerPed(source, index))
                            }
                        }
                    }
                } else if (!inputvalue && !selecttions) {
                    $.post('https://ManagePolice/error', JSON.stringify({}))
                }
            })

            $("#Update").click(function () {
                if (inputvalue && selecttions) {
                    alert("can't find value")

                } else {
                    if (!inputvalue) {
                        $.post('https://ManagePolice/error', JSON.stringify({}))

                    }
                }
            })

        })
    }
})

// js show inside a div tag
function search() {
    let input, select, filter, options, textVelue
    input = document.getElementsByClassName("Incident-Tag");
    filter = input.value.toUpperCase()
    select = document.getElementsByClassName("dropdown-content");
    options = document.getElementsByTagName('option')

    for(i=0;i < options.length;i++) {
        select = options[i].getElementsByTagName("option")[0]

        if(select) {
            textVelue.content || textVelue.innerText
        }

        if (textVelue.toUpperCase().indexOf(filter) > -1 ) {
            select[i].style.display = "block"
        }else {
            select[i].style.display = "none"
        }
    }
}
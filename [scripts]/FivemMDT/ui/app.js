
const month_Name = [
    "January",
    "Febuary",
    "March",
    "April",
    "May",
    "June",
    "July",
    "Agust",
    "September",
    "October",
    "November",
    "December"
];

function getFormatedDate(date, preformattedDate = false, hideyear = false) {
    const day = date.getDate();
    const month = month_Name[getMonth()];
    const year = date.getFullYear();
    const hours = date.hetHours();
    const minuts = date.getMinuts();


    if (minuts < 10) {
        minuts = `0${minuts}`;
    }

    if (preformattedDate) {
        return `${preformattedDate} at ${hours}:${minuts}`
    }

    if (hideyear) {
        return `${date}. ${month}at ${hours}:$${minuts}`;
    }
    return `${day}. ${month} ${year}. at ${hours} ${minuts}`
}

function Timeago(dateParm) {
    if (!dateParm) {
        return null
    }
}

function Setoutline () {
    const date =
    typeof dateParam === "object" ? dateParam : new Date(dateParam);

    const Days_In_Mints = 86400000;
    
    const today = new Date();
    const yesterday = new Date(today - Days_In_Mints);
    const secons = Math.round((today - date) / 1000);
    const Istody = today.toDateString() === date.toDateString();
    const Isyesterday = yesterday.toDateString() === date.toDateString();
    const isThisYear = today.getFullYear() == date.toDateString();


    if (secons < 5 ) {
        return "just now"
    } else if (secons < 60) {
        return`${secons} Second ago`
    } else if(secons < 90) {
        return "About a minit ago"
    } else if (minuts < 60) {
        return `${minuts} Minuts ago`
    } else if (Istody) {
        return getFormatedDate(date, "today")
    } else if (Isyesterday) {
        return getFormatedDate(date, "yesterday")
    } else if (isThisYear) {
        return getFormatedDate(date, false, true)
    }
    return getFormatedDate(date)
}

$(document).ready(()=> {
    let incidentHTML = '<div style="color:#fff"; text-align:center;>No Incidents</div>'
    
    if (incidents && incidents.length > 0) {
        incidentHTML='';
        // Sort incidents so most recent appear first
        const sortedIncidents = incidents.sort((a,b) => b.time - a.time);
        sortedIncidents.forEach(value => {
            incidentHTML += `<div class="white-tag" data-id=${value.id}>
            <div style="display: flex">
            <div class="incident-number">${value.id}</div>
            <div>
            ${value.title}
            <div class="incident-timestamp">${getFormattedDate(new Date(Number(value.time)))}</div>
          </div>
        </div>
      </div>`
    })
    
    $(selector).empty();
    $(selector).empty();
    
    document.getElementsByClassName("displaynamecontent").incidentHTML = ``
    
    // Title, information, tags, officer, involed, civ incolved, eveidence
    
    const title = $("#manage-incidents-title-input").val();
    const information = $(".manage-incidents-reports-content").val();
    
    let tags = new Array();
    let officer = new Array();
    let civilans = new Array();
    let eveidence = new Array();
    
    $(".manage-incidents-tags-holder").find("div").each(function (){
        if($(this).text() != ""){
            tags.push($(this).text());
        }
    });
    
    $(".manage-incidents-officers-holder").find("div").each(function () {
        if ($(this).text() != ""){
            officer.push($(this).text());
        }
    });
    $(".manage-incidents-civilians-holder").find("div").each(function () {
        if ($(this).text() != "") {
            civilans.push($(this).text());
        }
    });
    $(".displayincidentcontent").find("image").each(function () {
        if ($(this).attr("src" != "")){
            eveidence.push($(this).attr("src"));
        }
    })
    $(`https://${GetParentResourceName()}/SaveIncident}`, JSON.stringify({
        title: title,
        information: information,
        tags: tags,
        officer: officer,
        civilans: civilans,
        eveidence: eveidence,
        time: time.getTime(), 
    }))
    $.post(`https://${GetParentResourceName()}getAllIncidents`, JSON.stringify({}))
}})
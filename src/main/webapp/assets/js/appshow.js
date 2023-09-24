window.onload = function() {
    let details_url = window.location.search;
    let urlparams = new URLSearchParams(details_url);
    let geturl = urlparams.get("app_id");
    console.log(geturl);

    const url = "/mgoodapp/GetAllViewAppJsonServlet";
    axios.get(url)
        .then(function(response) {
            const apparray = response.data;
            console.log(apparray);
            let app_detail = apparray.find((e) => e.appointmentId === parseInt(geturl));
            console.log(app_detail);
        });
};

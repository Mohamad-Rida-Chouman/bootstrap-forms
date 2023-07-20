const pages = {}

pages.base_url = "http://localhost/bootstrap-forms/backend/";

pages.print_message = (message) =>{
    console.log(message);
}

pages.getAPI = async (url) => {
    try {
        const response = await fetch(url);
        console.log(response);
        if (!response.ok) {
            const errorText = await response.text();
            throw new Error("Network response was not ok: " + errorText);
        }

        return await response;
    } catch (error) {
        pages.print_message("Error from GET API: " + error);
    }
}

pages.page_signin = async () => {
    const signin_url = pages.base_url + "signin.php";
    const response = await pages.getAPI(signin_url);
    // const name = response.data[1].name;
}

pages.page_signup = async () => {
    const signup_url = pages.base_url + "signup.php";
    const response = await pages.getAPI(signup_url);
    // const name = response.data[1].name;
}

pages.loadFor = (page) => {
    eval("pages.page_" + page + "();")
}







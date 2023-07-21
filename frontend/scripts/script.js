// document.addEventListener("DOMContentLoaded", () => {
    
    
// });

const pages = {};

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

pages.getPost = async (event) => {
    event.preventDefault();
    try {
      const form = document.getElementById("form");
      const formData = new FormData(form);
    //   console.log(url);
      const url = form.action;
  
      const response = await fetch(url, {
        method: "POST",
        body: formData,
      });
      
      if (!response.ok) {
        throw new Error("Network response was not ok");
      }
      
      const data = await response.text();
      console.log(data);

      displayName(data)

    } catch (error) {
      pages.print_message("Error from GET API: " + error);
    }
  };

  document.getElementById("form").addEventListener("submit", pages.getPost);

  function displayName(name) {
    window.location = "http://localhost/bootstrap-forms/frontend/dashboard.html?firstname=" + name;
  
}
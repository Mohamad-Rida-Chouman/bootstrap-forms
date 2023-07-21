const pages = {}

document.getElementById("form").addEventListener("submit", pages.getPost);

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

pages.getPost = async () => {
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
  
      const data = await response.json();
      console.log(data);
    } catch (error) {
      pages.print_message("Error from GET API: " + error);
    }
  };

// payment.js - this is javascript of your another page
document.addEventListener('DOMContentLoaded', (event) => {
    const parameters = new URLSearchParams(window.location.search);
    const firstname = parameters.get('firstname');
    document.getElementById('usernameDisplay').innerHTML = firstname;
    event.preventDefault();
  });
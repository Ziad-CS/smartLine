let email = document.getElementById("mail");
const emailRegex = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
const menu = document.getElementById("menu");
const menuButton = document.getElementById("menuButton");
const arrow = document.querySelector(".bi-caret-down-fill")

if (menu && menuButton) {
  menuButton.addEventListener("click", e =>{
    menu.classList.toggle("none");
    arrow.classList.toggle("up");
  });
  document.addEventListener("click", e => {
    if (!menuButton.contains(e.target) && !menu.contains(e.target)) {
      menu.classList.add("none");
      arrow.classList.remove("up");
    }
  });
}
rEmail = document.getElementById("registerEmail");
rName = document.getElementById("registerName");
rPass = document.getElementById("registerPass");
rConfirmation = document.getElementById("registerConfirmation");
function showToast(message, type=error) {
  const container = document.getElementById("toast-container");
  const toast = document.createElement("div");
  toast.classList = `custom-toast type-${type}`
  const icon = type === 'error' ? '⚠️' : '✅';
  toast.innerHTML = `
    <span class="toast-icon">${icon}</span>
    <span class="toast-message">${message}</span>
  `;
  container.appendChild(toast)

  setTimeout(() => {
    toast.classList.add('show');
  }, 10);
  
  setTimeout(() => {
    toast.classList.remove('show');
      
    setTimeout(() => {
      toast.remove();
    }, 400); 
  }, 4000);
}
if (rEmail & rName & rPass & rConfirmation ) {
  
}

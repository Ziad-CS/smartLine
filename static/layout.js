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

function showToast(message, type="error") {
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
if (rEmail && rName && rPass && rConfirmation ) {
  // * register validation
  
}

document.querySelectorAll(".category_btn").forEach(btn => {
  console.log(btn)
  btn.addEventListener("click", function() {
    document.querySelector(".category_btn.active").classList.remove("active");
    this.classList.add("active");
    const pramams = new URLSearchParams(window.location.search)
    pramams.set("category", this.dataset.cat);
    window.location.href = `${window.location.pathname}?${pramams.toString()}`
  });
});


const search = document.getElementById("search");
const searchArea = document.getElementById("searchArea");
let isSubmitting = false;
if (search) {
  search.addEventListener("submit", (e) => {
    e.preventDefault()
    isSubmitting = true;
    const q = searchArea.value
    const pramams = new URLSearchParams(window.location.search)
    pramams.set("q", q);
    window.location.href = `${window.location.pathname}?${pramams.toString()}`;
  });
  searchArea.addEventListener("blur", (e) => {
    setTimeout( () => {
      if (isSubmitting) return;
      if (e.relatedTarget && search.contains(e.relatedTarget)) return;
      const pramams = new URLSearchParams(window.location.search);
      if (pramams.has("q")) {
        searchArea.value = pramams.get("q");
      }
    }, 0);
    });
  const pramams = new URLSearchParams(window.location.search);
  if (pramams.has("q")) {
    searchArea.value = pramams.get("q");
  }
}
const clearBtn = document.getElementById("clearBtn");

function clearQ() {
  if (searchArea.value.length > 0) {
    clearBtn.style.display = "block";
  } else {
    clearBtn.style.display = "none";
  }
}
clearQ()
if (searchArea && clearBtn) {
  searchArea.addEventListener("blur", clearQ)
}


clearBtn.addEventListener("click", () => {
  searchArea.value = "";
  clearBtn.style.display = "none";
  const pramams = new URLSearchParams(window.location.search);
  pramams.delete("q");
  window.location.href = `${window.location.pathname}?${pramams.toString()}`;
});


function manageLocationMenu() {
  const country = document.getElementById("countryList").tomselect;
  const cityList = document.getElementById("citiesList").tomselect;
  const applyBtn = document.getElementById("applyLocationBtn");
  const locationLabel = document.getElementById("currentLocationLabel");
  if (country && cityList) {
    applyBtn.addEventListener("click", () => {
      const selectedCity = cityList.getValue();
      const selectedCountryName = country.options[country.getValue()].text;

      locationLabel.textContent = `${selectedCity}, ${selectedCountryName}`;

      const modalEl = document.getElementById("locationModal");
      const modalInstance = bootstrap.Modal.getInstance(modalEl);
      modalInstance.hide();

      const pramams = new URLSearchParams(window.location.search);
      fetch(
        `/changeLocation?location=${window.location.pathname + "?" + pramams.toString()}&selectedCity=${selectedCity}&selectedCountryName=${selectedCountryName}`,
      );

      loadServicesByCity(selectedCity);
    });

    country.on("change", function () {
      const selectedCountry = this.getValue();

      if (selectedCountry) {
        fetch(`/api/get-cities?country=${encodeURIComponent(selectedCountry)}`)
          .then((response) => {
            if (!response.ok) {
              throw new Error("Network error");
            }
            return response.json(); // عمل Parse تلقائي للـ JSON
          })
          .then((cities) => {
            // const fileName = response.url.substring(response.url.lastIndexOf('/'));
            // console.log(fileName)
            // تفريغ القائمة القديمة
            // cityList.innerHTML = "";
            cityList.clear();
            cityList.clearOptions();
            cityList.disable();
            cityList.addOption({
              value: "",
              text: "Loading cities...",
            });
            cityList.refreshOptions(true);

            if (cities.length === 0) {
              cityList.addOption({
                value: "",
                text: "No cities available",
              });
              cityList.refreshOptions(true);
            } else {
              // ملء المدن الجديدة
              // cities.forEach((city) => {
              //   const option = document.createElement("option");
              //   option.value = city.toLowerCase();
              //   option.textContent = city;
              //   cityList.appendChild(option);
              // });
              cities.forEach((city) => {
                cityList.addOption({ value: city.toLowerCase(), text: city });
              });
              cityList.refreshOptions(true);
            }
          })
          .catch((error) => {
            console.error("Error fetching cities:", error);
            cityList.addOption({
              value: "",
              text: "Error loading cities",
            });
            cityList.refreshOptions(true);
          })
          .finally(() => {
            cityList.enable();
          });
      }
    });
  }
}

document.addEventListener("DOMContentLoaded", manageLocationMenu);

// ! copy & past
const countrySelect = document.getElementById('countryList');
const citySelect = document.getElementById('citiesList');

// // 1. تحديث المدن لما الدولة تتغير
// countrySelect.addEventListener('change', async () => {
//   const countryCode = countrySelect.value;
  
//   // طلب المدن من الـ Endpoint الداخلية الخاصة بك
//   const response = await fetch(`/api/cities?country=${countryCode}`);
//   const cities = await response.json();

//   // تفريغ القائمة الحالية وإضافة المدن الجديدة
//   citySelect.innerHTML = '';
//   cities.forEach(city => {
//     const opt = document.createElement('option');
//     opt.value = city.name;
//     opt.textContent = city.name;
//     citySelect.appendChild(opt);
//   });
// });

function loadServicesByCity(cityName) {
  console.log("Filtering cards for:", cityName);
  // fetch services for this city and update the DOM
}
// ! auto reload sec
// function autoReloadInf(route) {
//   fetch(route);
//   setInterval(autoReloadInf
//     , 30000
//   );
// }
// function autoReload(route) {
//   fetch(route);
// }
